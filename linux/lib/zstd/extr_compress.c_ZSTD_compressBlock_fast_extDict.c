
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int searchLength; } ;
struct TYPE_7__ {TYPE_1__ cParams; } ;
struct TYPE_8__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTD_CCtx ;
typedef int U32 ;


 int ZSTD_compressBlock_fast_extDict_generic (TYPE_3__*,void const*,size_t,int) ;

__attribute__((used)) static void ZSTD_compressBlock_fast_extDict(ZSTD_CCtx *ctx, const void *src, size_t srcSize)
{
 U32 const mls = ctx->params.cParams.searchLength;
 switch (mls) {
 default:
 case 4: ZSTD_compressBlock_fast_extDict_generic(ctx, src, srcSize, 4); return;
 case 5: ZSTD_compressBlock_fast_extDict_generic(ctx, src, srcSize, 5); return;
 case 6: ZSTD_compressBlock_fast_extDict_generic(ctx, src, srcSize, 6); return;
 case 7: ZSTD_compressBlock_fast_extDict_generic(ctx, src, srcSize, 7); return;
 }
}
