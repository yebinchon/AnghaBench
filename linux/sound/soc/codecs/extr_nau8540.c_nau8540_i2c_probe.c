
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8540 {int regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NAU8540_REG_I2C_DEVICE_ID ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct nau8540* dev_get_platdata (struct device*) ;
 struct nau8540* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct nau8540*) ;
 int nau8540_component_driver ;
 int nau8540_dai ;
 int nau8540_init_regs (struct nau8540*) ;
 int nau8540_regmap_config ;
 int nau8540_reset_chip (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int nau8540_i2c_probe(struct i2c_client *i2c,
 const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct nau8540 *nau8540 = dev_get_platdata(dev);
 int ret, value;

 if (!nau8540) {
  nau8540 = devm_kzalloc(dev, sizeof(*nau8540), GFP_KERNEL);
  if (!nau8540)
   return -ENOMEM;
 }
 i2c_set_clientdata(i2c, nau8540);

 nau8540->regmap = devm_regmap_init_i2c(i2c, &nau8540_regmap_config);
 if (IS_ERR(nau8540->regmap))
  return PTR_ERR(nau8540->regmap);
 ret = regmap_read(nau8540->regmap, NAU8540_REG_I2C_DEVICE_ID, &value);
 if (ret < 0) {
  dev_err(dev, "Failed to read device id from the NAU85L40: %d\n",
   ret);
  return ret;
 }

 nau8540->dev = dev;
 nau8540_reset_chip(nau8540->regmap);
 nau8540_init_regs(nau8540);

 return devm_snd_soc_register_component(dev,
  &nau8540_component_driver, &nau8540_dai, 1);
}
