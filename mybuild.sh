#!/bin/bash -x

set -e -o pipefail

NPROC=$(grep -c ^processor /proc/cpuinfo)
ROOT_DIR=$PWD
BUILD_DIR=$ROOT_DIR/build
EM_TOOLCHAIN_FILE=/emsdk_portable/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake
PTHREAD_FLAGS='-s USE_PTHREADS=1'
export CFLAGS=$PTHREAD_FLAGS
export CPPFLAGS=$PTHREAD_FLAGS
export LDFLAGS=$PTHREAD_FLAGS

# Install ffmpeg
emmake make install -j${NPROC}


