
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclk; int rate; int bclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* coeff_div ;

__attribute__((used)) static int get_coeff(int mclk, int rate, int timesofbclk)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(coeff_div); i++) {
  if (coeff_div[i].mclk == mclk && coeff_div[i].rate == rate &&
   (coeff_div[i].bclk / coeff_div[i].rate) == timesofbclk)
   return i;
 }
 return -EINVAL;
}
