
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclk; int srate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* cs35l34_mclk_coeffs ;

__attribute__((used)) static int cs35l34_get_mclk_coeff(int mclk, int srate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cs35l34_mclk_coeffs); i++) {
  if (cs35l34_mclk_coeffs[i].mclk == mclk &&
   cs35l34_mclk_coeffs[i].srate == srate)
   return i;
 }
 return -EINVAL;
}
