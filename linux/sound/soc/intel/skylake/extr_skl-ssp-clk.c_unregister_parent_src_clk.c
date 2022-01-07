
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk_parent {int hw; int lookup; } ;


 int clk_hw_unregister_fixed_rate (int ) ;
 int clkdev_drop (int ) ;

__attribute__((used)) static void unregister_parent_src_clk(struct skl_clk_parent *pclk,
     unsigned int id)
{
 while (id--) {
  clkdev_drop(pclk[id].lookup);
  clk_hw_unregister_fixed_rate(pclk[id].hw);
 }
}
