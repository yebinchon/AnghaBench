
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* rep; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTD_REP_NUM ;

void ZSTD_invalidateRepCodes(ZSTD_CCtx *cctx)
{
 int i;
 for (i = 0; i < ZSTD_REP_NUM; i++)
  cctx->rep[i] = 0;
}
