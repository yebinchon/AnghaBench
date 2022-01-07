
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rate; int mclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* clk_map_table ;

__attribute__((used)) static int cs4265_get_clk_index(int mclk, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(clk_map_table); i++) {
  if (clk_map_table[i].rate == rate &&
    clk_map_table[i].mclk == mclk)
   return i;
 }
 return -EINVAL;
}
