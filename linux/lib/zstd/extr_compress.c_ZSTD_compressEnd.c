
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 size_t ZSTD_compressContinue_internal (int *,void*,size_t,void const*,size_t,int,int) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_writeEpilogue (int *,char*,size_t) ;

size_t ZSTD_compressEnd(ZSTD_CCtx *cctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 size_t endResult;
 size_t const cSize = ZSTD_compressContinue_internal(cctx, dst, dstCapacity, src, srcSize, 1, 1);
 if (ZSTD_isError(cSize))
  return cSize;
 endResult = ZSTD_writeEpilogue(cctx, (char *)dst + cSize, dstCapacity - cSize);
 if (ZSTD_isError(endResult))
  return endResult;
 return cSize + endResult;
}
