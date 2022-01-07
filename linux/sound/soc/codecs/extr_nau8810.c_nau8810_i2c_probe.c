
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8810 {int regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NAU8810_REG_RESET ;
 int PTR_ERR (int ) ;
 struct nau8810* dev_get_platdata (struct device*) ;
 struct nau8810* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct nau8810*) ;
 int nau8810_component_driver ;
 int nau8810_dai ;
 int nau8810_regmap_config ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int nau8810_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct nau8810 *nau8810 = dev_get_platdata(dev);

 if (!nau8810) {
  nau8810 = devm_kzalloc(dev, sizeof(*nau8810), GFP_KERNEL);
  if (!nau8810)
   return -ENOMEM;
 }
 i2c_set_clientdata(i2c, nau8810);

 nau8810->regmap = devm_regmap_init_i2c(i2c, &nau8810_regmap_config);
 if (IS_ERR(nau8810->regmap))
  return PTR_ERR(nau8810->regmap);
 nau8810->dev = dev;

 regmap_write(nau8810->regmap, NAU8810_REG_RESET, 0x00);

 return devm_snd_soc_register_component(dev,
  &nau8810_component_driver, &nau8810_dai, 1);
}
