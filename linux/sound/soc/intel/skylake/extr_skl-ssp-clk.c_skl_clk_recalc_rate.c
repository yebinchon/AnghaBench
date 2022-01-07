
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk {unsigned long rate; } ;
struct clk_hw {int dummy; } ;


 struct skl_clk* to_skl_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long skl_clk_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct skl_clk *clkdev = to_skl_clk(hw);

 if (clkdev->rate)
  return clkdev->rate;

 return 0;
}
