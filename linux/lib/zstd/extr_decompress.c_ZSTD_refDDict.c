
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * rep; int hufTable; int OFTable; int MLTable; int LLTable; } ;
struct TYPE_10__ {int dictSize; TYPE_2__ entropy; scalar_t__ entropyPresent; scalar_t__ dictContent; int dictID; } ;
typedef TYPE_3__ ZSTD_DDict ;
struct TYPE_8__ {int * rep; } ;
struct TYPE_11__ {int litEntropy; int fseEntropy; TYPE_1__ entropy; int HUFptr; int OFTptr; int MLTptr; int LLTptr; int const* dictEnd; int const* previousDstEnd; scalar_t__ vBase; scalar_t__ base; int dictID; } ;
typedef TYPE_4__ ZSTD_DCtx ;
typedef int BYTE ;


 int ZSTD_decompressBegin (TYPE_4__*) ;

__attribute__((used)) static void ZSTD_refDDict(ZSTD_DCtx *dstDCtx, const ZSTD_DDict *ddict)
{
 ZSTD_decompressBegin(dstDCtx);
 if (ddict) {
  dstDCtx->dictID = ddict->dictID;
  dstDCtx->base = ddict->dictContent;
  dstDCtx->vBase = ddict->dictContent;
  dstDCtx->dictEnd = (const BYTE *)ddict->dictContent + ddict->dictSize;
  dstDCtx->previousDstEnd = dstDCtx->dictEnd;
  if (ddict->entropyPresent) {
   dstDCtx->litEntropy = 1;
   dstDCtx->fseEntropy = 1;
   dstDCtx->LLTptr = ddict->entropy.LLTable;
   dstDCtx->MLTptr = ddict->entropy.MLTable;
   dstDCtx->OFTptr = ddict->entropy.OFTable;
   dstDCtx->HUFptr = ddict->entropy.hufTable;
   dstDCtx->entropy.rep[0] = ddict->entropy.rep[0];
   dstDCtx->entropy.rep[1] = ddict->entropy.rep[1];
   dstDCtx->entropy.rep[2] = ddict->entropy.rep[2];
  } else {
   dstDCtx->litEntropy = 0;
   dstDCtx->fseEntropy = 0;
  }
 }
}
