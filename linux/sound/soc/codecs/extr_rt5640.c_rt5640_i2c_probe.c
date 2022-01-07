
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rt5640_priv {int hp_mute; int irq; int jack_work; int bp_work; int regmap; int ldo1_en; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int RT5640_DEVICE_ID ;
 int RT5640_DUMMY1 ;
 int RT5640_MCLK_DET ;
 int RT5640_RESET ;
 int RT5640_VENDOR_ID2 ;
 int dev_err (TYPE_1__*,char*,unsigned int,...) ;
 int dev_warn (TYPE_1__*,char*,int,...) ;
 int devm_add_action_or_reset (TYPE_1__*,int ,struct rt5640_priv*) ;
 int devm_gpio_request_one (TYPE_1__*,int ,int ,char*) ;
 struct rt5640_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_irq (TYPE_1__*,int ,int ,int,char*,struct rt5640_priv*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int disable_irq (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5640_priv*) ;
 int init_list ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int rt5640_button_press_work ;
 int rt5640_cancel_work ;
 int rt5640_dai ;
 int rt5640_irq ;
 int rt5640_jack_work ;
 int rt5640_parse_dt (struct rt5640_priv*,int ) ;
 int rt5640_regmap ;
 int soc_component_dev_rt5640 ;

__attribute__((used)) static int rt5640_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5640_priv *rt5640;
 int ret;
 unsigned int val;

 rt5640 = devm_kzalloc(&i2c->dev,
    sizeof(struct rt5640_priv),
    GFP_KERNEL);
 if (((void*)0) == rt5640)
  return -ENOMEM;
 i2c_set_clientdata(i2c, rt5640);

 if (i2c->dev.of_node) {
  ret = rt5640_parse_dt(rt5640, i2c->dev.of_node);
  if (ret)
   return ret;
 } else
  rt5640->ldo1_en = -EINVAL;

 rt5640->regmap = devm_regmap_init_i2c(i2c, &rt5640_regmap);
 if (IS_ERR(rt5640->regmap)) {
  ret = PTR_ERR(rt5640->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 if (gpio_is_valid(rt5640->ldo1_en)) {
  ret = devm_gpio_request_one(&i2c->dev, rt5640->ldo1_en,
         GPIOF_OUT_INIT_HIGH,
         "RT5640 LDO1_EN");
  if (ret < 0) {
   dev_err(&i2c->dev, "Failed to request LDO1_EN %d: %d\n",
    rt5640->ldo1_en, ret);
   return ret;
  }
  msleep(400);
 }

 regmap_read(rt5640->regmap, RT5640_VENDOR_ID2, &val);
 if (val != RT5640_DEVICE_ID) {
  dev_err(&i2c->dev,
   "Device with ID register %#x is not rt5640/39\n", val);
  return -ENODEV;
 }

 regmap_write(rt5640->regmap, RT5640_RESET, 0);

 ret = regmap_register_patch(rt5640->regmap, init_list,
        ARRAY_SIZE(init_list));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 regmap_update_bits(rt5640->regmap, RT5640_DUMMY1,
    RT5640_MCLK_DET, RT5640_MCLK_DET);

 rt5640->hp_mute = 1;
 rt5640->irq = i2c->irq;
 INIT_DELAYED_WORK(&rt5640->bp_work, rt5640_button_press_work);
 INIT_WORK(&rt5640->jack_work, rt5640_jack_work);


 ret = devm_add_action_or_reset(&i2c->dev, rt5640_cancel_work, rt5640);
 if (ret)
  return ret;

 ret = devm_request_irq(&i2c->dev, rt5640->irq, rt5640_irq,
          IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
          | IRQF_ONESHOT, "rt5640", rt5640);
 if (ret == 0) {

  disable_irq(rt5640->irq);
 } else {
  dev_warn(&i2c->dev, "Failed to reguest IRQ %d: %d\n",
    rt5640->irq, ret);
  rt5640->irq = -ENXIO;
 }

 return devm_snd_soc_register_component(&i2c->dev,
          &soc_component_dev_rt5640,
          rt5640_dai, ARRAY_SIZE(rt5640_dai));
}
