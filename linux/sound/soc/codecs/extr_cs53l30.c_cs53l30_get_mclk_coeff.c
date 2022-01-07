
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclk_rate; int srate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* cs53l30_mclk_coeffs ;

__attribute__((used)) static int cs53l30_get_mclk_coeff(int mclk_rate, int srate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cs53l30_mclk_coeffs); i++) {
  if (cs53l30_mclk_coeffs[i].mclk_rate == mclk_rate &&
      cs53l30_mclk_coeffs[i].srate == srate)
   return i;
 }

 return -EINVAL;
}
