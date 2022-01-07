
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5651_priv {int hp_mute; int irq; int jack_detect_work; int bp_work; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5651_DEVICE_ID ;
 int RT5651_DEVICE_ID_VALUE ;
 int RT5651_RESET ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int,...) ;
 int devm_add_action_or_reset (int *,int ,struct rt5651_priv*) ;
 struct rt5651_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_irq (int *,int ,int ,int,char*,struct rt5651_priv*) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int disable_irq (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5651_priv*) ;
 int init_list ;
 int regmap_read (int ,int ,int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int rt5651_button_press_work ;
 int rt5651_cancel_work ;
 int rt5651_dai ;
 int rt5651_irq ;
 int rt5651_jack_detect_work ;
 int rt5651_regmap ;
 int soc_component_dev_rt5651 ;

__attribute__((used)) static int rt5651_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5651_priv *rt5651;
 int ret;
 int err;

 rt5651 = devm_kzalloc(&i2c->dev, sizeof(*rt5651),
    GFP_KERNEL);
 if (((void*)0) == rt5651)
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5651);

 rt5651->regmap = devm_regmap_init_i2c(i2c, &rt5651_regmap);
 if (IS_ERR(rt5651->regmap)) {
  ret = PTR_ERR(rt5651->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 err = regmap_read(rt5651->regmap, RT5651_DEVICE_ID, &ret);
 if (err)
  return err;

 if (ret != RT5651_DEVICE_ID_VALUE) {
  dev_err(&i2c->dev,
   "Device with ID register %#x is not rt5651\n", ret);
  return -ENODEV;
 }

 regmap_write(rt5651->regmap, RT5651_RESET, 0);

 ret = regmap_register_patch(rt5651->regmap, init_list,
        ARRAY_SIZE(init_list));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 rt5651->irq = i2c->irq;
 rt5651->hp_mute = 1;

 INIT_DELAYED_WORK(&rt5651->bp_work, rt5651_button_press_work);
 INIT_WORK(&rt5651->jack_detect_work, rt5651_jack_detect_work);


 ret = devm_add_action_or_reset(&i2c->dev, rt5651_cancel_work, rt5651);
 if (ret)
  return ret;

 ret = devm_request_irq(&i2c->dev, rt5651->irq, rt5651_irq,
          IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
          | IRQF_ONESHOT, "rt5651", rt5651);
 if (ret == 0) {

  disable_irq(rt5651->irq);
 } else {
  dev_warn(&i2c->dev, "Failed to reguest IRQ %d: %d\n",
    rt5651->irq, ret);
  rt5651->irq = -ENXIO;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
    &soc_component_dev_rt5651,
    rt5651_dai, ARRAY_SIZE(rt5651_dai));

 return ret;
}
