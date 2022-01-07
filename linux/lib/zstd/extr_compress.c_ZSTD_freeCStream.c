
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {struct TYPE_4__* outBuff; struct TYPE_4__* inBuff; int * cdictLocal; int * cctx; int customMem; } ;
typedef TYPE_1__ ZSTD_CStream ;


 int ZSTD_free (TYPE_1__*,int const) ;
 int ZSTD_freeCCtx (int *) ;
 int ZSTD_freeCDict (int *) ;

size_t ZSTD_freeCStream(ZSTD_CStream *zcs)
{
 if (zcs == ((void*)0))
  return 0;
 {
  ZSTD_customMem const cMem = zcs->customMem;
  ZSTD_freeCCtx(zcs->cctx);
  zcs->cctx = ((void*)0);
  ZSTD_freeCDict(zcs->cdictLocal);
  zcs->cdictLocal = ((void*)0);
  ZSTD_free(zcs->inBuff, cMem);
  zcs->inBuff = ((void*)0);
  ZSTD_free(zcs->outBuff, cMem);
  zcs->outBuff = ((void*)0);
  ZSTD_free(zcs, cMem);
  return 0;
 }
}
