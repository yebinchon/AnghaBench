
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_BLOCKSIZE_ABSOLUTEMAX ;
 size_t ZSTD_blockHeaderSize ;

size_t ZSTD_DStreamInSize(void) { return ZSTD_BLOCKSIZE_ABSOLUTEMAX + ZSTD_blockHeaderSize; }
