
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct skl_ssp_clk {int parent_name; int name; } ;
struct skl_clk_pdata {int dummy; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct skl_clk {int id; int lookup; TYPE_1__ hw; struct skl_clk_pdata* pdata; } ;
struct device {int dummy; } ;
struct clk_init_data {int num_parents; int name; int * parent_names; int flags; int * ops; } ;


 int CLK_SET_RATE_GATE ;
 int ENOMEM ;
 struct skl_clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clkdev_hw_create (TYPE_1__*,int ,int *) ;
 int devm_clk_hw_register (struct device*,TYPE_1__*) ;
 struct skl_clk* devm_kzalloc (struct device*,int,int ) ;
 int skl_clk_ops ;

__attribute__((used)) static struct skl_clk *register_skl_clk(struct device *dev,
   struct skl_ssp_clk *clk,
   struct skl_clk_pdata *clk_pdata, int id)
{
 struct clk_init_data init;
 struct skl_clk *clkdev;
 int ret;

 clkdev = devm_kzalloc(dev, sizeof(*clkdev), GFP_KERNEL);
 if (!clkdev)
  return ERR_PTR(-ENOMEM);

 init.name = clk->name;
 init.ops = &skl_clk_ops;
 init.flags = CLK_SET_RATE_GATE;
 init.parent_names = &clk->parent_name;
 init.num_parents = 1;
 clkdev->hw.init = &init;
 clkdev->pdata = clk_pdata;

 clkdev->id = id;
 ret = devm_clk_hw_register(dev, &clkdev->hw);
 if (ret) {
  clkdev = ERR_PTR(ret);
  return clkdev;
 }

 clkdev->lookup = clkdev_hw_create(&clkdev->hw, init.name, ((void*)0));
 if (!clkdev->lookup)
  clkdev = ERR_PTR(-ENOMEM);

 return clkdev;
}
