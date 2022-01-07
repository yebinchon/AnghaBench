
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct adav80x {struct regmap* regmap; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int adav80x_component_driver ;
 int adav80x_dais ;
 int dev_set_drvdata (struct device*,struct adav80x*) ;
 struct adav80x* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int ) ;

int adav80x_bus_probe(struct device *dev, struct regmap *regmap)
{
 struct adav80x *adav80x;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 adav80x = devm_kzalloc(dev, sizeof(*adav80x), GFP_KERNEL);
 if (!adav80x)
  return -ENOMEM;

 dev_set_drvdata(dev, adav80x);
 adav80x->regmap = regmap;

 return devm_snd_soc_register_component(dev, &adav80x_component_driver,
  adav80x_dais, ARRAY_SIZE(adav80x_dais));
}
