
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_parameters ;
struct TYPE_4__ {scalar_t__ litLengthSum; } ;
struct TYPE_5__ {int xxhState; TYPE_1__ seqStore; int * rep; scalar_t__ loadedDictEnd; scalar_t__ dictID; int stage; scalar_t__ nextToUpdate; scalar_t__ dictLimit; scalar_t__ lowLimit; int frameContentSize; int params; scalar_t__ base; scalar_t__ nextSrc; } ;
typedef TYPE_2__ ZSTD_CCtx ;
typedef int U64 ;
typedef scalar_t__ U32 ;


 int ZSTD_REP_NUM ;
 int ZSTDcs_init ;
 int * repStartValue ;
 int xxh64_reset (int *,int ) ;

__attribute__((used)) static size_t ZSTD_continueCCtx(ZSTD_CCtx *cctx, ZSTD_parameters params, U64 frameContentSize)
{
 U32 const end = (U32)(cctx->nextSrc - cctx->base);
 cctx->params = params;
 cctx->frameContentSize = frameContentSize;
 cctx->lowLimit = end;
 cctx->dictLimit = end;
 cctx->nextToUpdate = end + 1;
 cctx->stage = ZSTDcs_init;
 cctx->dictID = 0;
 cctx->loadedDictEnd = 0;
 {
  int i;
  for (i = 0; i < ZSTD_REP_NUM; i++)
   cctx->rep[i] = repStartValue[i];
 }
 cctx->seqStore.litLengthSum = 0;
 xxh64_reset(&cctx->xxhState, 0);
 return 0;
}
