
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {int rate; scalar_t__ mclk; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 scalar_t__ abs (scalar_t__) ;
 TYPE_1__* clk_map_table ;

__attribute__((used)) static int cs42l52_get_clk(int mclk, int rate)
{
 int i, ret = -EINVAL;
 u_int mclk1, mclk2 = 0;

 for (i = 0; i < ARRAY_SIZE(clk_map_table); i++) {
  if (clk_map_table[i].rate == rate) {
   mclk1 = clk_map_table[i].mclk;
   if (abs(mclk - mclk1) < abs(mclk - mclk2)) {
    mclk2 = mclk1;
    ret = i;
   }
  }
 }
 return ret;
}
