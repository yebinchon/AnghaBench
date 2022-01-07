
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {struct TYPE_5__* dictBuffer; TYPE_3__* refContext; } ;
typedef TYPE_1__ ZSTD_CDict ;
struct TYPE_6__ {int customMem; } ;


 int ZSTD_free (TYPE_1__*,int const) ;
 int ZSTD_freeCCtx (TYPE_3__*) ;

size_t ZSTD_freeCDict(ZSTD_CDict *cdict)
{
 if (cdict == ((void*)0))
  return 0;
 {
  ZSTD_customMem const cMem = cdict->refContext->customMem;
  ZSTD_freeCCtx(cdict->refContext);
  ZSTD_free(cdict->dictBuffer, cMem);
  ZSTD_free(cdict, cMem);
  return 0;
 }
}
