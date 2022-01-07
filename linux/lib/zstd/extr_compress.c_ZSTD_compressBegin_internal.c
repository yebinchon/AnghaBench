
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_compResetPolicy_e ;
typedef int ZSTD_CCtx ;
typedef int U64 ;


 int CHECK_F (int ) ;
 size_t ZSTD_compress_insertDictionary (int *,void const*,size_t) ;
 int ZSTD_resetCCtx_advanced (int *,int ,int ,int const) ;
 int ZSTDcrp_continue ;
 int ZSTDcrp_fullReset ;

__attribute__((used)) static size_t ZSTD_compressBegin_internal(ZSTD_CCtx *cctx, const void *dict, size_t dictSize, ZSTD_parameters params, U64 pledgedSrcSize)
{
 ZSTD_compResetPolicy_e const crp = dictSize ? ZSTDcrp_fullReset : ZSTDcrp_continue;
 CHECK_F(ZSTD_resetCCtx_advanced(cctx, params, pledgedSrcSize, crp));
 return ZSTD_compress_insertDictionary(cctx, dict, dictSize);
}
