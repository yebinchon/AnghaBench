
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_compress_internal (int *,void*,size_t,void const*,size_t,void const*,size_t,int ) ;

size_t ZSTD_compress_usingDict(ZSTD_CCtx *ctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize, const void *dict, size_t dictSize,
          ZSTD_parameters params)
{
 return ZSTD_compress_internal(ctx, dst, dstCapacity, src, srcSize, dict, dictSize, params);
}
