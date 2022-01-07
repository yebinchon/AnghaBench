
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk_parent_src {int name; int rate; int parent_name; } ;
struct skl_clk_parent {int hw; int lookup; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SKL_MAX_CLK_SRC ;
 int clk_hw_register_fixed_rate (struct device*,int ,int ,int ,int ) ;
 int clk_hw_unregister_fixed_rate (int ) ;
 int clkdev_hw_create (int ,int ,int *) ;
 int unregister_parent_src_clk (struct skl_clk_parent*,int) ;

__attribute__((used)) static int skl_register_parent_clks(struct device *dev,
   struct skl_clk_parent *parent,
   struct skl_clk_parent_src *pclk)
{
 int i, ret;

 for (i = 0; i < SKL_MAX_CLK_SRC; i++) {


  parent[i].hw = clk_hw_register_fixed_rate(dev, pclk[i].name,
    pclk[i].parent_name, 0, pclk[i].rate);
  if (IS_ERR(parent[i].hw)) {
   ret = PTR_ERR(parent[i].hw);
   goto err;
  }

  parent[i].lookup = clkdev_hw_create(parent[i].hw, pclk[i].name,
         ((void*)0));
  if (!parent[i].lookup) {
   clk_hw_unregister_fixed_rate(parent[i].hw);
   ret = -ENOMEM;
   goto err;
  }
 }

 return 0;
err:
 unregister_parent_src_clk(parent, i);
 return ret;
}
