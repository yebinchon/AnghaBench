
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mclk; int srate; int ratio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* clk_ratio_table ;

__attribute__((used)) static int cs42l56_get_mclk_ratio(int mclk, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(clk_ratio_table); i++) {
  if (clk_ratio_table[i].mclk == mclk &&
      clk_ratio_table[i].srate == rate)
   return clk_ratio_table[i].ratio;
 }
 return -EINVAL;
}
