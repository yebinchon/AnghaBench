
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {struct TYPE_4__* outBuff; struct TYPE_4__* inBuff; int * ddictLocal; int * dctx; int customMem; } ;
typedef TYPE_1__ ZSTD_DStream ;


 int ZSTD_free (TYPE_1__*,int const) ;
 int ZSTD_freeDCtx (int *) ;
 int ZSTD_freeDDict (int *) ;

size_t ZSTD_freeDStream(ZSTD_DStream *zds)
{
 if (zds == ((void*)0))
  return 0;
 {
  ZSTD_customMem const cMem = zds->customMem;
  ZSTD_freeDCtx(zds->dctx);
  zds->dctx = ((void*)0);
  ZSTD_freeDDict(zds->ddictLocal);
  zds->ddictLocal = ((void*)0);
  ZSTD_free(zds->inBuff, cMem);
  zds->inBuff = ((void*)0);
  ZSTD_free(zds->outBuff, cMem);
  zds->outBuff = ((void*)0);
  ZSTD_free(zds, cMem);
  return 0;
 }
}
