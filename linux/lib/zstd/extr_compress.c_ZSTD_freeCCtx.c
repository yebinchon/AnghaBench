
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int customMem; struct TYPE_4__* workSpace; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTD_free (TYPE_1__*,int ) ;

size_t ZSTD_freeCCtx(ZSTD_CCtx *cctx)
{
 if (cctx == ((void*)0))
  return 0;
 ZSTD_free(cctx->workSpace, cctx->customMem);
 ZSTD_free(cctx, cctx->customMem);
 return 0;
}
