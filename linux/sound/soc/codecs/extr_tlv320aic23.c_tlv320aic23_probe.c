
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct aic23 {struct regmap* regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_set_drvdata (struct device*,struct aic23*) ;
 struct aic23* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int soc_component_dev_tlv320aic23 ;
 int tlv320aic23_dai ;

int tlv320aic23_probe(struct device *dev, struct regmap *regmap)
{
 struct aic23 *aic23;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 aic23 = devm_kzalloc(dev, sizeof(struct aic23), GFP_KERNEL);
 if (aic23 == ((void*)0))
  return -ENOMEM;

 aic23->regmap = regmap;

 dev_set_drvdata(dev, aic23);

 return devm_snd_soc_register_component(dev,
          &soc_component_dev_tlv320aic23,
          &tlv320aic23_dai, 1);
}
