
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int xtalk_protect; int xtalk_baktab_initialized; int regmap; int xtalk_work; int xtalk_sem; int xtalk_state; scalar_t__ irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; scalar_t__ irq; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int NAU8825_REG_I2C_DEVICE_ID ;
 int NAU8825_SOFTWARE_ID_MASK ;
 int NAU8825_SOFTWARE_ID_NAU8825 ;
 int NAU8825_XTALK_DONE ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 struct nau8825* dev_get_platdata (struct device*) ;
 struct nau8825* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct nau8825*) ;
 int nau8825_component_driver ;
 int nau8825_dai ;
 int nau8825_init_regs (struct nau8825*) ;
 int nau8825_print_device_properties (struct nau8825*) ;
 int nau8825_read_device_properties (struct device*,struct nau8825*) ;
 int nau8825_regmap_config ;
 int nau8825_reset_chip (int ) ;
 int nau8825_setup_irq (struct nau8825*) ;
 int nau8825_xtalk_work ;
 int regmap_read (int ,int ,int*) ;
 int sema_init (int *,int) ;

__attribute__((used)) static int nau8825_i2c_probe(struct i2c_client *i2c,
 const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct nau8825 *nau8825 = dev_get_platdata(&i2c->dev);
 int ret, value;

 if (!nau8825) {
  nau8825 = devm_kzalloc(dev, sizeof(*nau8825), GFP_KERNEL);
  if (!nau8825)
   return -ENOMEM;
  ret = nau8825_read_device_properties(dev, nau8825);
  if (ret)
   return ret;
 }

 i2c_set_clientdata(i2c, nau8825);

 nau8825->regmap = devm_regmap_init_i2c(i2c, &nau8825_regmap_config);
 if (IS_ERR(nau8825->regmap))
  return PTR_ERR(nau8825->regmap);
 nau8825->dev = dev;
 nau8825->irq = i2c->irq;



 nau8825->xtalk_state = NAU8825_XTALK_DONE;
 nau8825->xtalk_protect = 0;
 nau8825->xtalk_baktab_initialized = 0;
 sema_init(&nau8825->xtalk_sem, 1);
 INIT_WORK(&nau8825->xtalk_work, nau8825_xtalk_work);

 nau8825_print_device_properties(nau8825);

 nau8825_reset_chip(nau8825->regmap);
 ret = regmap_read(nau8825->regmap, NAU8825_REG_I2C_DEVICE_ID, &value);
 if (ret < 0) {
  dev_err(dev, "Failed to read device id from the NAU8825: %d\n",
   ret);
  return ret;
 }
 if ((value & NAU8825_SOFTWARE_ID_MASK) !=
   NAU8825_SOFTWARE_ID_NAU8825) {
  dev_err(dev, "Not a NAU8825 chip\n");
  return -ENODEV;
 }

 nau8825_init_regs(nau8825);

 if (i2c->irq)
  nau8825_setup_irq(nau8825);

 return devm_snd_soc_register_component(&i2c->dev,
  &nau8825_component_driver,
  &nau8825_dai, 1);
}
