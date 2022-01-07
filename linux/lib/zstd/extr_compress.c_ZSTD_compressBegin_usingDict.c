
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 size_t ZSTD_compressBegin_internal (int *,void const*,size_t,int const,int ) ;
 int ZSTD_getParams (int,int ,size_t) ;

size_t ZSTD_compressBegin_usingDict(ZSTD_CCtx *cctx, const void *dict, size_t dictSize, int compressionLevel)
{
 ZSTD_parameters const params = ZSTD_getParams(compressionLevel, 0, dictSize);
 return ZSTD_compressBegin_internal(cctx, dict, dictSize, params, 0);
}
