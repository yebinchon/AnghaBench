
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ strategy; int chainLog; size_t hashLog; } ;
struct TYPE_9__ {int contentSizeFlag; } ;
struct TYPE_11__ {TYPE_2__ cParams; TYPE_1__ fParams; } ;
typedef TYPE_3__ ZSTD_parameters ;
typedef int ZSTD_customMem ;
struct TYPE_12__ {scalar_t__ stage; size_t hashLog3; int * hufTable; scalar_t__ flagStaticHufTable; int * offcodeCTable; int * matchlengthCTable; int * litlengthCTable; scalar_t__ flagStaticTables; int dictID; int loadedDictEnd; int lowLimit; int dictLimit; int dictBase; int base; int nextSrc; int nextToUpdate3; int nextToUpdate; int * workSpace; TYPE_3__ params; int customMem; } ;
typedef TYPE_4__ ZSTD_CCtx ;
typedef int U32 ;


 size_t ERROR (int ) ;
 scalar_t__ ZSTD_fast ;
 int ZSTD_resetCCtx_advanced (TYPE_4__*,TYPE_3__,unsigned long long,int ) ;
 int ZSTDcrp_noMemset ;
 scalar_t__ ZSTDcs_init ;
 int memcpy (int *,int *,size_t const) ;
 int stage_wrong ;

size_t ZSTD_copyCCtx(ZSTD_CCtx *dstCCtx, const ZSTD_CCtx *srcCCtx, unsigned long long pledgedSrcSize)
{
 if (srcCCtx->stage != ZSTDcs_init)
  return ERROR(stage_wrong);

 memcpy(&dstCCtx->customMem, &srcCCtx->customMem, sizeof(ZSTD_customMem));
 {
  ZSTD_parameters params = srcCCtx->params;
  params.fParams.contentSizeFlag = (pledgedSrcSize > 0);
  ZSTD_resetCCtx_advanced(dstCCtx, params, pledgedSrcSize, ZSTDcrp_noMemset);
 }


 {
  size_t const chainSize = (srcCCtx->params.cParams.strategy == ZSTD_fast) ? 0 : (1 << srcCCtx->params.cParams.chainLog);
  size_t const hSize = ((size_t)1) << srcCCtx->params.cParams.hashLog;
  size_t const h3Size = (size_t)1 << srcCCtx->hashLog3;
  size_t const tableSpace = (chainSize + hSize + h3Size) * sizeof(U32);
  memcpy(dstCCtx->workSpace, srcCCtx->workSpace, tableSpace);
 }


 dstCCtx->nextToUpdate = srcCCtx->nextToUpdate;
 dstCCtx->nextToUpdate3 = srcCCtx->nextToUpdate3;
 dstCCtx->nextSrc = srcCCtx->nextSrc;
 dstCCtx->base = srcCCtx->base;
 dstCCtx->dictBase = srcCCtx->dictBase;
 dstCCtx->dictLimit = srcCCtx->dictLimit;
 dstCCtx->lowLimit = srcCCtx->lowLimit;
 dstCCtx->loadedDictEnd = srcCCtx->loadedDictEnd;
 dstCCtx->dictID = srcCCtx->dictID;


 dstCCtx->flagStaticTables = srcCCtx->flagStaticTables;
 dstCCtx->flagStaticHufTable = srcCCtx->flagStaticHufTable;
 if (srcCCtx->flagStaticTables) {
  memcpy(dstCCtx->litlengthCTable, srcCCtx->litlengthCTable, sizeof(dstCCtx->litlengthCTable));
  memcpy(dstCCtx->matchlengthCTable, srcCCtx->matchlengthCTable, sizeof(dstCCtx->matchlengthCTable));
  memcpy(dstCCtx->offcodeCTable, srcCCtx->offcodeCTable, sizeof(dstCCtx->offcodeCTable));
 }
 if (srcCCtx->flagStaticHufTable) {
  memcpy(dstCCtx->hufTable, srcCCtx->hufTable, 256 * 4);
 }

 return 0;
}
