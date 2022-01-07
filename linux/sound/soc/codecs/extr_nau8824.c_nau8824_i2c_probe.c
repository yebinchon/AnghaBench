
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8824 {int regmap; int jd_sem; scalar_t__ irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NAU8824_REG_I2C_DEVICE_ID ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct nau8824* dev_get_platdata (struct device*) ;
 struct nau8824* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct nau8824*) ;
 int nau8824_component_driver ;
 int nau8824_dai ;
 int nau8824_init_regs (struct nau8824*) ;
 int nau8824_print_device_properties (struct nau8824*) ;
 int nau8824_read_device_properties (struct device*,struct nau8824*) ;
 int nau8824_regmap_config ;
 int nau8824_reset_chip (int ) ;
 int nau8824_setup_irq (struct nau8824*) ;
 int regmap_read (int ,int ,int*) ;
 int sema_init (int *,int) ;

__attribute__((used)) static int nau8824_i2c_probe(struct i2c_client *i2c,
 const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct nau8824 *nau8824 = dev_get_platdata(dev);
 int ret, value;

 if (!nau8824) {
  nau8824 = devm_kzalloc(dev, sizeof(*nau8824), GFP_KERNEL);
  if (!nau8824)
   return -ENOMEM;
  ret = nau8824_read_device_properties(dev, nau8824);
  if (ret)
   return ret;
 }
 i2c_set_clientdata(i2c, nau8824);

 nau8824->regmap = devm_regmap_init_i2c(i2c, &nau8824_regmap_config);
 if (IS_ERR(nau8824->regmap))
  return PTR_ERR(nau8824->regmap);
 nau8824->dev = dev;
 nau8824->irq = i2c->irq;
 sema_init(&nau8824->jd_sem, 1);

 nau8824_print_device_properties(nau8824);

 ret = regmap_read(nau8824->regmap, NAU8824_REG_I2C_DEVICE_ID, &value);
 if (ret < 0) {
  dev_err(dev, "Failed to read device id from the NAU8824: %d\n",
   ret);
  return ret;
 }
 nau8824_reset_chip(nau8824->regmap);
 nau8824_init_regs(nau8824);

 if (i2c->irq)
  nau8824_setup_irq(nau8824);

 return devm_snd_soc_register_component(dev,
  &nau8824_component_driver, &nau8824_dai, 1);
}
