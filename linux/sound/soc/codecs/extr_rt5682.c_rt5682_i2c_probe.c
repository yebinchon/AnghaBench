
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rt5682_platform_data {int dmic1_data_pin; int dmic1_clk_pin; int ldo1_en; } ;
struct rt5682_priv {int jd_check_work; int jack_detect_work; int regmap; struct rt5682_platform_data pdata; int calibrate_mutex; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct TYPE_8__ {int supply; } ;


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
 int RT5682_BIAS_CUR_CTRL_8 ;
 int RT5682_CHARGE_PUMP_1 ;
 int RT5682_CP_CLK_HP_300KHZ ;
 int RT5682_CP_CLK_HP_MASK ;
 int RT5682_DEPOP_1 ;
 int RT5682_DEVICE_ID ;




 int RT5682_DMIC1_NULL ;
 int RT5682_DMIC_1_DP_GPIO2 ;
 int RT5682_DMIC_1_DP_GPIO5 ;
 int RT5682_DMIC_1_DP_MASK ;
 int RT5682_DMIC_CTRL_1 ;
 int RT5682_GP1_PIN_DMIC_CLK ;
 int RT5682_GP1_PIN_MASK ;
 int RT5682_GP2_PIN_DMIC_SDA ;
 int RT5682_GP2_PIN_MASK ;
 int RT5682_GP3_PIN_DMIC_CLK ;
 int RT5682_GP3_PIN_MASK ;
 int RT5682_GP4_PIN_ADCDAT1 ;
 int RT5682_GP4_PIN_MASK ;
 int RT5682_GP5_PIN_DACDAT1 ;
 int RT5682_GP5_PIN_DMIC_SDA ;
 int RT5682_GP5_PIN_MASK ;
 int RT5682_GPIO_CTRL_1 ;
 int RT5682_HPA_CP_BIAS_3UA ;
 int RT5682_HPA_CP_BIAS_CTRL_MASK ;
 int RT5682_HP_DRIVER_5X ;
 int RT5682_HP_DRIVER_MASK ;
 int RT5682_I2C_MODE ;
 int RT5682_LDO1_DVO_12 ;
 int RT5682_LDO1_DVO_MASK ;
 int RT5682_MICBIAS_2 ;
 int RT5682_PWR_ANLG_1 ;
 int RT5682_TEST_MODE_CTRL_1 ;
 int dev_err (int *,char*,...) ;
 struct rt5682_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ devm_gpio_request_one (int *,int ,int ,char*) ;
 struct rt5682_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct rt5682_priv*) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5682_priv*) ;
 struct rt5682_platform_data i2s_default_platform_data ;
 int mutex_init (int *) ;
 TYPE_1__* patch_list ;
 int pr_err (char*,unsigned int) ;
 int regmap_multi_reg_write (int ,TYPE_1__*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int rt5682_calibrate (struct rt5682_priv*) ;
 TYPE_1__* rt5682_dai ;
 int rt5682_irq ;
 int rt5682_jack_detect_handler ;
 int rt5682_jd_check_handler ;
 int rt5682_parse_dt (struct rt5682_priv*,int *) ;
 int rt5682_regmap ;
 int rt5682_reset (int ) ;
 int * rt5682_supply_names ;
 int soc_component_dev_rt5682 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5682_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5682_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct rt5682_priv *rt5682;
 int i, ret;
 unsigned int val;

 rt5682 = devm_kzalloc(&i2c->dev, sizeof(struct rt5682_priv),
  GFP_KERNEL);

 if (rt5682 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5682);

 rt5682->pdata = i2s_default_platform_data;

 if (pdata)
  rt5682->pdata = *pdata;
 else
  rt5682_parse_dt(rt5682, &i2c->dev);

 rt5682->regmap = devm_regmap_init_i2c(i2c, &rt5682_regmap);
 if (IS_ERR(rt5682->regmap)) {
  ret = PTR_ERR(rt5682->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(rt5682->supplies); i++)
  rt5682->supplies[i].supply = rt5682_supply_names[i];

 ret = devm_regulator_bulk_get(&i2c->dev, ARRAY_SIZE(rt5682->supplies),
          rt5682->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(rt5682->supplies),
        rt5682->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 if (gpio_is_valid(rt5682->pdata.ldo1_en)) {
  if (devm_gpio_request_one(&i2c->dev, rt5682->pdata.ldo1_en,
       GPIOF_OUT_INIT_HIGH, "rt5682"))
   dev_err(&i2c->dev, "Fail gpio_request gpio_ldo\n");
 }


 usleep_range(300000, 350000);

 regmap_write(rt5682->regmap, RT5682_I2C_MODE, 0x1);
 usleep_range(10000, 15000);

 regmap_read(rt5682->regmap, RT5682_DEVICE_ID, &val);
 if (val != DEVICE_ID) {
  pr_err("Device with ID register %x is not rt5682\n", val);
  return -ENODEV;
 }

 rt5682_reset(rt5682->regmap);

 mutex_init(&rt5682->calibrate_mutex);
 rt5682_calibrate(rt5682);

 ret = regmap_multi_reg_write(rt5682->regmap, patch_list,
        ARRAY_SIZE(patch_list));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 regmap_write(rt5682->regmap, RT5682_DEPOP_1, 0x0000);


 if (rt5682->pdata.dmic1_data_pin != RT5682_DMIC1_NULL) {
  switch (rt5682->pdata.dmic1_data_pin) {
  case 129:
   regmap_update_bits(rt5682->regmap, RT5682_DMIC_CTRL_1,
    RT5682_DMIC_1_DP_MASK, RT5682_DMIC_1_DP_GPIO2);
   regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
    RT5682_GP2_PIN_MASK, RT5682_GP2_PIN_DMIC_SDA);
   break;

  case 128:
   regmap_update_bits(rt5682->regmap, RT5682_DMIC_CTRL_1,
    RT5682_DMIC_1_DP_MASK, RT5682_DMIC_1_DP_GPIO5);
   regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
    RT5682_GP5_PIN_MASK, RT5682_GP5_PIN_DMIC_SDA);
   break;

  default:
   dev_warn(&i2c->dev, "invalid DMIC_DAT pin\n");
   break;
  }

  switch (rt5682->pdata.dmic1_clk_pin) {
  case 131:
   regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
    RT5682_GP1_PIN_MASK, RT5682_GP1_PIN_DMIC_CLK);
   break;

  case 130:
   regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
    RT5682_GP3_PIN_MASK, RT5682_GP3_PIN_DMIC_CLK);
   break;

  default:
   dev_warn(&i2c->dev, "invalid DMIC_CLK pin\n");
   break;
  }
 }

 regmap_update_bits(rt5682->regmap, RT5682_PWR_ANLG_1,
   RT5682_LDO1_DVO_MASK | RT5682_HP_DRIVER_MASK,
   RT5682_LDO1_DVO_12 | RT5682_HP_DRIVER_5X);
 regmap_write(rt5682->regmap, RT5682_MICBIAS_2, 0x0380);
 regmap_update_bits(rt5682->regmap, RT5682_GPIO_CTRL_1,
   RT5682_GP4_PIN_MASK | RT5682_GP5_PIN_MASK,
   RT5682_GP4_PIN_ADCDAT1 | RT5682_GP5_PIN_DACDAT1);
 regmap_write(rt5682->regmap, RT5682_TEST_MODE_CTRL_1, 0x0000);
 regmap_update_bits(rt5682->regmap, RT5682_BIAS_CUR_CTRL_8,
   RT5682_HPA_CP_BIAS_CTRL_MASK, RT5682_HPA_CP_BIAS_3UA);
 regmap_update_bits(rt5682->regmap, RT5682_CHARGE_PUMP_1,
   RT5682_CP_CLK_HP_MASK, RT5682_CP_CLK_HP_300KHZ);

 INIT_DELAYED_WORK(&rt5682->jack_detect_work,
    rt5682_jack_detect_handler);
 INIT_DELAYED_WORK(&rt5682->jd_check_work,
    rt5682_jd_check_handler);


 if (i2c->irq) {
  ret = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0),
   rt5682_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
   | IRQF_ONESHOT, "rt5682", rt5682);
  if (ret)
   dev_err(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

 }

 return devm_snd_soc_register_component(&i2c->dev,
     &soc_component_dev_rt5682,
     rt5682_dai, ARRAY_SIZE(rt5682_dai));
}
