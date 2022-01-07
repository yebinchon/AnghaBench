
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rt5668_platform_data {int dmic1_data_pin; int dmic1_clk_pin; int ldo1_en; } ;
struct rt5668_priv {int calibrate_mutex; int jd_check_work; int jack_detect_work; int regmap; struct rt5668_platform_data pdata; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct TYPE_6__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int DEVICE_ID ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5668_DEPOP_1 ;
 int RT5668_DEVICE_ID ;




 int RT5668_DMIC1_NULL ;
 int RT5668_DMIC_1_DP_GPIO2 ;
 int RT5668_DMIC_1_DP_GPIO5 ;
 int RT5668_DMIC_1_DP_MASK ;
 int RT5668_DMIC_CTRL_1 ;
 int RT5668_GP1_PIN_DMIC_CLK ;
 int RT5668_GP1_PIN_MASK ;
 int RT5668_GP2_PIN_DMIC_SDA ;
 int RT5668_GP2_PIN_MASK ;
 int RT5668_GP3_PIN_DMIC_CLK ;
 int RT5668_GP3_PIN_MASK ;
 int RT5668_GP4_PIN_ADCDAT1 ;
 int RT5668_GP4_PIN_MASK ;
 int RT5668_GP5_PIN_DACDAT1 ;
 int RT5668_GP5_PIN_DMIC_SDA ;
 int RT5668_GP5_PIN_MASK ;
 int RT5668_GPIO_CTRL_1 ;
 int RT5668_HP_DRIVER_5X ;
 int RT5668_HP_DRIVER_MASK ;
 int RT5668_I2C_MODE ;
 int RT5668_LDO1_DVO_14 ;
 int RT5668_LDO1_DVO_MASK ;
 int RT5668_MICBIAS_2 ;
 int RT5668_PWR_ANLG_1 ;
 int RT5668_TEST_MODE_CTRL_1 ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 struct rt5668_platform_data* dev_get_platdata (int *) ;
 scalar_t__ devm_gpio_request_one (int *,int ,int ,char*) ;
 struct rt5668_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct rt5668_priv*) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5668_priv*) ;
 int mutex_init (int *) ;
 int pr_err (char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int rt5668_calibrate (struct rt5668_priv*) ;
 TYPE_1__* rt5668_dai ;
 int rt5668_irq ;
 int rt5668_jack_detect_handler ;
 int rt5668_jd_check_handler ;
 int rt5668_parse_dt (struct rt5668_priv*,int *) ;
 int rt5668_regmap ;
 int rt5668_reset (int ) ;
 int * rt5668_supply_names ;
 int soc_component_dev_rt5668 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5668_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5668_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct rt5668_priv *rt5668;
 int i, ret;
 unsigned int val;

 rt5668 = devm_kzalloc(&i2c->dev, sizeof(struct rt5668_priv),
  GFP_KERNEL);

 if (rt5668 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5668);

 if (pdata)
  rt5668->pdata = *pdata;
 else
  rt5668_parse_dt(rt5668, &i2c->dev);

 rt5668->regmap = devm_regmap_init_i2c(i2c, &rt5668_regmap);
 if (IS_ERR(rt5668->regmap)) {
  ret = PTR_ERR(rt5668->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(rt5668->supplies); i++)
  rt5668->supplies[i].supply = rt5668_supply_names[i];

 ret = devm_regulator_bulk_get(&i2c->dev, ARRAY_SIZE(rt5668->supplies),
          rt5668->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(rt5668->supplies),
        rt5668->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 if (gpio_is_valid(rt5668->pdata.ldo1_en)) {
  if (devm_gpio_request_one(&i2c->dev, rt5668->pdata.ldo1_en,
       GPIOF_OUT_INIT_HIGH, "rt5668"))
   dev_err(&i2c->dev, "Fail gpio_request gpio_ldo\n");
 }


 usleep_range(300000, 350000);

 regmap_write(rt5668->regmap, RT5668_I2C_MODE, 0x1);
 usleep_range(10000, 15000);

 regmap_read(rt5668->regmap, RT5668_DEVICE_ID, &val);
 if (val != DEVICE_ID) {
  pr_err("Device with ID register %x is not rt5668\n", val);
  return -ENODEV;
 }

 rt5668_reset(rt5668->regmap);

 rt5668_calibrate(rt5668);

 regmap_write(rt5668->regmap, RT5668_DEPOP_1, 0x0000);


 if (rt5668->pdata.dmic1_data_pin != RT5668_DMIC1_NULL) {
  switch (rt5668->pdata.dmic1_data_pin) {
  case 129:
   regmap_update_bits(rt5668->regmap, RT5668_DMIC_CTRL_1,
    RT5668_DMIC_1_DP_MASK, RT5668_DMIC_1_DP_GPIO2);
   regmap_update_bits(rt5668->regmap, RT5668_GPIO_CTRL_1,
    RT5668_GP2_PIN_MASK, RT5668_GP2_PIN_DMIC_SDA);
   break;

  case 128:
   regmap_update_bits(rt5668->regmap, RT5668_DMIC_CTRL_1,
    RT5668_DMIC_1_DP_MASK, RT5668_DMIC_1_DP_GPIO5);
   regmap_update_bits(rt5668->regmap, RT5668_GPIO_CTRL_1,
    RT5668_GP5_PIN_MASK, RT5668_GP5_PIN_DMIC_SDA);
   break;

  default:
   dev_dbg(&i2c->dev, "invalid DMIC_DAT pin\n");
   break;
  }

  switch (rt5668->pdata.dmic1_clk_pin) {
  case 131:
   regmap_update_bits(rt5668->regmap, RT5668_GPIO_CTRL_1,
    RT5668_GP1_PIN_MASK, RT5668_GP1_PIN_DMIC_CLK);
   break;

  case 130:
   regmap_update_bits(rt5668->regmap, RT5668_GPIO_CTRL_1,
    RT5668_GP3_PIN_MASK, RT5668_GP3_PIN_DMIC_CLK);
   break;

  default:
   dev_dbg(&i2c->dev, "invalid DMIC_CLK pin\n");
   break;
  }
 }

 regmap_update_bits(rt5668->regmap, RT5668_PWR_ANLG_1,
   RT5668_LDO1_DVO_MASK | RT5668_HP_DRIVER_MASK,
   RT5668_LDO1_DVO_14 | RT5668_HP_DRIVER_5X);
 regmap_write(rt5668->regmap, RT5668_MICBIAS_2, 0x0380);
 regmap_update_bits(rt5668->regmap, RT5668_GPIO_CTRL_1,
   RT5668_GP4_PIN_MASK | RT5668_GP5_PIN_MASK,
   RT5668_GP4_PIN_ADCDAT1 | RT5668_GP5_PIN_DACDAT1);
 regmap_write(rt5668->regmap, RT5668_TEST_MODE_CTRL_1, 0x0000);

 INIT_DELAYED_WORK(&rt5668->jack_detect_work,
    rt5668_jack_detect_handler);
 INIT_DELAYED_WORK(&rt5668->jd_check_work,
    rt5668_jd_check_handler);

 mutex_init(&rt5668->calibrate_mutex);

 if (i2c->irq) {
  ret = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0),
   rt5668_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
   | IRQF_ONESHOT, "rt5668", rt5668);
  if (ret)
   dev_err(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

 }

 return devm_snd_soc_register_component(&i2c->dev, &soc_component_dev_rt5668,
   rt5668_dai, ARRAY_SIZE(rt5668_dai));
}
