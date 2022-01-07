
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DStream ;


 size_t MIN (size_t,int ) ;
 int WILDCOPY_OVERLENGTH ;
 size_t ZSTD_ALIGN (size_t const) ;
 int ZSTD_BLOCKSIZE_ABSOLUTEMAX ;
 size_t ZSTD_DCtxWorkspaceBound () ;

size_t ZSTD_DStreamWorkspaceBound(size_t maxWindowSize)
{
 size_t const blockSize = MIN(maxWindowSize, ZSTD_BLOCKSIZE_ABSOLUTEMAX);
 size_t const inBuffSize = blockSize;
 size_t const outBuffSize = maxWindowSize + blockSize + WILDCOPY_OVERLENGTH * 2;
 return ZSTD_DCtxWorkspaceBound() + ZSTD_ALIGN(sizeof(ZSTD_DStream)) + ZSTD_ALIGN(inBuffSize) + ZSTD_ALIGN(outBuffSize);
}
