
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 int skl_clk_change_status (struct skl_clk*,int) ;
 struct skl_clk* to_skl_clk (struct clk_hw*) ;

__attribute__((used)) static int skl_clk_prepare(struct clk_hw *hw)
{
 struct skl_clk *clkdev = to_skl_clk(hw);

 return skl_clk_change_status(clkdev, 1);
}
