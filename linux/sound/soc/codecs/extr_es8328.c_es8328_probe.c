
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct es8328_priv {TYPE_1__* supplies; struct regmap* regmap; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct es8328_priv*) ;
 struct es8328_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int es8328_component_driver ;
 int es8328_dai ;
 int * supply_names ;

int es8328_probe(struct device *dev, struct regmap *regmap)
{
 struct es8328_priv *es8328;
 int ret;
 int i;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 es8328 = devm_kzalloc(dev, sizeof(*es8328), GFP_KERNEL);
 if (es8328 == ((void*)0))
  return -ENOMEM;

 es8328->regmap = regmap;

 for (i = 0; i < ARRAY_SIZE(es8328->supplies); i++)
  es8328->supplies[i].supply = supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(es8328->supplies),
    es8328->supplies);
 if (ret) {
  dev_err(dev, "unable to get regulators\n");
  return ret;
 }

 dev_set_drvdata(dev, es8328);

 return devm_snd_soc_register_component(dev,
   &es8328_component_driver, &es8328_dai, 1);
}
