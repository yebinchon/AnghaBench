
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int min; unsigned int max; int fratio; int ratio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* fll_sync_fratios ;

__attribute__((used)) static int madera_find_sync_fratio(unsigned int fref, int *fratio)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fll_sync_fratios); i++) {
  if (fll_sync_fratios[i].min <= fref &&
      fref <= fll_sync_fratios[i].max) {
   if (fratio)
    *fratio = fll_sync_fratios[i].fratio;

   return fll_sync_fratios[i].ratio;
  }
 }

 return -EINVAL;
}
