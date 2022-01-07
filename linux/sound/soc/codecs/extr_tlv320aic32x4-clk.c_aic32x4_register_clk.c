
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct clk_init_data {scalar_t__ flags; int num_parents; int parent_names; int name; int ops; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct clk_aic32x4 {TYPE_1__ hw; int reg; int regmap; struct device* dev; } ;
struct clk {int dummy; } ;
struct aic32x4_clkdesc {int name; int reg; int num_parents; int parent_names; int ops; } ;


 scalar_t__ ENOMEM ;
 int GFP_KERNEL ;
 int clk_hw_register_clkdev (TYPE_1__*,int ,char const*) ;
 int dev_get_regmap (struct device*,int *) ;
 char* dev_name (struct device*) ;
 struct clk* devm_clk_register (struct device*,TYPE_1__*) ;
 struct clk_aic32x4* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static struct clk *aic32x4_register_clk(struct device *dev,
   struct aic32x4_clkdesc *desc)
{
 struct clk_init_data init;
 struct clk_aic32x4 *priv;
 const char *devname = dev_name(dev);

 init.ops = desc->ops;
 init.name = desc->name;
 init.parent_names = desc->parent_names;
 init.num_parents = desc->num_parents;
 init.flags = 0;

 priv = devm_kzalloc(dev, sizeof(struct clk_aic32x4), GFP_KERNEL);
 if (priv == ((void*)0))
  return (struct clk *) -ENOMEM;

 priv->dev = dev;
 priv->hw.init = &init;
 priv->regmap = dev_get_regmap(dev, ((void*)0));
 priv->reg = desc->reg;

 clk_hw_register_clkdev(&priv->hw, desc->name, devname);
 return devm_clk_register(dev, &priv->hw);
}
