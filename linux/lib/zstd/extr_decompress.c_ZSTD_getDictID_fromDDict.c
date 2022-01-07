
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictSize; int dictContent; } ;
typedef TYPE_1__ ZSTD_DDict ;


 int ZSTD_getDictID_fromDict (int ,int ) ;

unsigned ZSTD_getDictID_fromDDict(const ZSTD_DDict *ddict)
{
 if (ddict == ((void*)0))
  return 0;
 return ZSTD_getDictID_fromDict(ddict->dictContent, ddict->dictSize);
}
