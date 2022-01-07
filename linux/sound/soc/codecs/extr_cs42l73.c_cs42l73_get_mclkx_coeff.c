
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclkx; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* cs42l73_mclkx_coeffs ;

__attribute__((used)) static int cs42l73_get_mclkx_coeff(int mclkx)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cs42l73_mclkx_coeffs); i++) {
  if (cs42l73_mclkx_coeffs[i].mclkx == mclkx)
   return i;
 }
 return -EINVAL;
}
