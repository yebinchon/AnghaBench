
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts3a227e {int regmap; int irq; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int irq; } ;


 int ADC_COMPLETE_INT_DISABLE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INTB_DISABLE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TS3A227E_REG_ACCESSORY_STATUS ;
 int TS3A227E_REG_INTERRUPT_DISABLE ;
 int dev_err (struct device*,char*,int,...) ;
 struct ts3a227e* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct ts3a227e*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ts3a227e*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int ts3a227e_interrupt ;
 int ts3a227e_jack_report (struct ts3a227e*) ;
 int ts3a227e_new_jack_state (struct ts3a227e*,unsigned int) ;
 int ts3a227e_parse_device_property (struct ts3a227e*,struct device*) ;
 int ts3a227e_regmap_config ;
 int ts3a227e_soc_driver ;

__attribute__((used)) static int ts3a227e_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct ts3a227e *ts3a227e;
 struct device *dev = &i2c->dev;
 int ret;
 unsigned int acc_reg;

 ts3a227e = devm_kzalloc(&i2c->dev, sizeof(*ts3a227e), GFP_KERNEL);
 if (ts3a227e == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, ts3a227e);
 ts3a227e->dev = dev;
 ts3a227e->irq = i2c->irq;

 ts3a227e->regmap = devm_regmap_init_i2c(i2c, &ts3a227e_regmap_config);
 if (IS_ERR(ts3a227e->regmap))
  return PTR_ERR(ts3a227e->regmap);

 ret = ts3a227e_parse_device_property(ts3a227e, dev);
 if (ret) {
  dev_err(dev, "Failed to parse device property: %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(dev, i2c->irq, ((void*)0), ts3a227e_interrupt,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     "TS3A227E", ts3a227e);
 if (ret) {
  dev_err(dev, "Cannot request irq %d (%d)\n", i2c->irq, ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev, &ts3a227e_soc_driver,
           ((void*)0), 0);
 if (ret)
  return ret;


 regmap_update_bits(ts3a227e->regmap, TS3A227E_REG_INTERRUPT_DISABLE,
      INTB_DISABLE | ADC_COMPLETE_INT_DISABLE,
      ADC_COMPLETE_INT_DISABLE);


 regmap_read(ts3a227e->regmap, TS3A227E_REG_ACCESSORY_STATUS, &acc_reg);
 ts3a227e_new_jack_state(ts3a227e, acc_reg);
 ts3a227e_jack_report(ts3a227e);

 return 0;
}
