
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {struct TYPE_4__* dictBuffer; int cMem; } ;
typedef TYPE_1__ ZSTD_DDict ;


 int ZSTD_free (TYPE_1__*,int const) ;

size_t ZSTD_freeDDict(ZSTD_DDict *ddict)
{
 if (ddict == ((void*)0))
  return 0;
 {
  ZSTD_customMem const cMem = ddict->cMem;
  ZSTD_free(ddict->dictBuffer, cMem);
  ZSTD_free(ddict, cMem);
  return 0;
 }
}
