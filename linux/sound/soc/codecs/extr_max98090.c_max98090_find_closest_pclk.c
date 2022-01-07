
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dmic_table ;

__attribute__((used)) static int max98090_find_closest_pclk(int pclk)
{
 int m1;
 int m2;
 int i;

 for (i = 0; i < ARRAY_SIZE(dmic_table); i++) {
  if (pclk == dmic_table[i].pclk)
   return i;
  if (pclk < dmic_table[i].pclk) {
   if (i == 0)
    return i;
   m1 = pclk - dmic_table[i-1].pclk;
   m2 = dmic_table[i].pclk - pclk;
   if (m1 < m2)
    return i - 1;
   else
    return i;
  }
 }

 return -EINVAL;
}
