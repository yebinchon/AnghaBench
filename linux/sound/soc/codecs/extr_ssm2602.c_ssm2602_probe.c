
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int type; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum ssm2602_type { ____Placeholder_ssm2602_type } ssm2602_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_set_drvdata (struct device*,struct ssm2602_priv*) ;
 struct ssm2602_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int soc_component_dev_ssm2602 ;
 int ssm2602_dai ;

int ssm2602_probe(struct device *dev, enum ssm2602_type type,
 struct regmap *regmap)
{
 struct ssm2602_priv *ssm2602;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 ssm2602 = devm_kzalloc(dev, sizeof(*ssm2602), GFP_KERNEL);
 if (ssm2602 == ((void*)0))
  return -ENOMEM;

 dev_set_drvdata(dev, ssm2602);
 ssm2602->type = type;
 ssm2602->regmap = regmap;

 return devm_snd_soc_register_component(dev, &soc_component_dev_ssm2602,
  &ssm2602_dai, 1);
}
