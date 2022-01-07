
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int sr; unsigned int ratio; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ds_ratio ;

__attribute__((used)) static unsigned int get_pdm_ds_ratio(unsigned int sr)
{
 unsigned int i, count, ratio;

 ratio = 0;
 if (!sr)
  return ratio;

 count = ARRAY_SIZE(ds_ratio);
 for (i = 0; i < count; i++) {
  if (sr == ds_ratio[i].sr)
   ratio = ds_ratio[i].ratio;
 }
 return ratio;
}
