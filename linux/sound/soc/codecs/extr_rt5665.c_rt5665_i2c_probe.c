
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rt5665_platform_data {int dmic1_data_pin; int dmic2_data_pin; scalar_t__ in4_diff; scalar_t__ in3_diff; scalar_t__ in2_diff; scalar_t__ in1_diff; int ldo1_en; } ;
struct rt5665_priv {scalar_t__ id; int calibrate_mutex; int jd_check_work; int calibrate_work; int jack_detect_work; int regmap; struct rt5665_platform_data pdata; TYPE_1__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ irq; } ;
struct TYPE_6__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ CODEC_5665 ;
 scalar_t__ CODEC_5666 ;
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
 int RT5665_DEB_80_MS ;
 int RT5665_DEB_STO_DAC_MASK ;
 int RT5665_DEVICE_ID ;


 int RT5665_DMIC1_NULL ;


 int RT5665_DMIC2_NULL ;
 int RT5665_DMIC_1_DP_GPIO4 ;
 int RT5665_DMIC_1_DP_IN2N ;
 int RT5665_DMIC_1_DP_MASK ;
 int RT5665_DMIC_2_DP_GPIO5 ;
 int RT5665_DMIC_2_DP_IN2P ;
 int RT5665_DMIC_2_DP_MASK ;
 int RT5665_DMIC_CTRL_1 ;
 int RT5665_EJD_CTRL_1 ;
 int RT5665_GP4_PF_IN ;
 int RT5665_GP4_PF_MASK ;
 int RT5665_GP4_PIN_DMIC1_SDA ;
 int RT5665_GP4_PIN_MASK ;
 int RT5665_GP5_PIN_DMIC2_SDA ;
 int RT5665_GP5_PIN_MASK ;
 int RT5665_GP8_PF_IN ;
 int RT5665_GP8_PF_MASK ;
 int RT5665_GP8_PIN_DMIC2_SCL ;
 int RT5665_GP8_PIN_MASK ;
 int RT5665_GP9_PIN_DMIC1_SCL ;
 int RT5665_GP9_PIN_MASK ;
 int RT5665_GPIO_CTRL_1 ;
 int RT5665_GPIO_CTRL_2 ;
 int RT5665_GPIO_CTRL_3 ;
 int RT5665_HP_CHARGE_PUMP_1 ;
 int RT5665_HP_DRIVER_5X ;
 int RT5665_HP_DRIVER_MASK ;
 int RT5665_HP_LOGIC_CTRL_2 ;
 int RT5665_IN1_DF_MASK ;
 int RT5665_IN1_IN2 ;
 int RT5665_IN2_DF_MASK ;
 int RT5665_IN3_DF_MASK ;
 int RT5665_IN3_IN4 ;
 int RT5665_IN4_DF_MASK ;
 int RT5665_LDO1_DVO_12 ;
 int RT5665_LDO1_DVO_MASK ;
 int RT5665_PM_HP_HV ;
 int RT5665_PM_HP_MASK ;
 int RT5665_PWR_ANLG_1 ;
 int RT5665_RESET ;
 int RT5665_STO1_DAC_SIL_DET ;
 int RT5665_VREF_POW_MASK ;
 int RT5665_VREF_POW_REG ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 struct rt5665_platform_data* dev_get_platdata (int *) ;
 scalar_t__ devm_gpio_request_one (int *,int ,int ,char*) ;
 struct rt5665_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,char*,struct rt5665_priv*) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5665_priv*) ;
 int mutex_init (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int rt5665_calibrate_handler ;
 TYPE_1__* rt5665_dai ;
 int rt5665_irq ;
 int rt5665_jack_detect_handler ;
 int rt5665_jd_check_handler ;
 int rt5665_parse_dt (struct rt5665_priv*,int *) ;
 int rt5665_regmap ;
 int * rt5665_supply_names ;
 int soc_component_dev_rt5665 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5665_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5665_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct rt5665_priv *rt5665;
 int i, ret;
 unsigned int val;

 rt5665 = devm_kzalloc(&i2c->dev, sizeof(struct rt5665_priv),
  GFP_KERNEL);

 if (rt5665 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5665);

 if (pdata)
  rt5665->pdata = *pdata;
 else
  rt5665_parse_dt(rt5665, &i2c->dev);

 for (i = 0; i < ARRAY_SIZE(rt5665->supplies); i++)
  rt5665->supplies[i].supply = rt5665_supply_names[i];

 ret = devm_regulator_bulk_get(&i2c->dev, ARRAY_SIZE(rt5665->supplies),
          rt5665->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(rt5665->supplies),
        rt5665->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 if (gpio_is_valid(rt5665->pdata.ldo1_en)) {
  if (devm_gpio_request_one(&i2c->dev, rt5665->pdata.ldo1_en,
       GPIOF_OUT_INIT_HIGH, "rt5665"))
   dev_err(&i2c->dev, "Fail gpio_request gpio_ldo\n");
 }


 usleep_range(300000, 350000);

 rt5665->regmap = devm_regmap_init_i2c(i2c, &rt5665_regmap);
 if (IS_ERR(rt5665->regmap)) {
  ret = PTR_ERR(rt5665->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt5665->regmap, RT5665_DEVICE_ID, &val);
 if (val != DEVICE_ID) {
  dev_err(&i2c->dev,
   "Device with ID register %x is not rt5665\n", val);
  return -ENODEV;
 }

 regmap_read(rt5665->regmap, RT5665_RESET, &val);
 switch (val) {
 case 0x0:
  rt5665->id = CODEC_5666;
  break;
 case 0x3:
 default:
  rt5665->id = CODEC_5665;
  break;
 }

 regmap_write(rt5665->regmap, RT5665_RESET, 0);


 if (rt5665->pdata.in1_diff)
  regmap_update_bits(rt5665->regmap, RT5665_IN1_IN2,
   RT5665_IN1_DF_MASK, RT5665_IN1_DF_MASK);
 if (rt5665->pdata.in2_diff)
  regmap_update_bits(rt5665->regmap, RT5665_IN1_IN2,
   RT5665_IN2_DF_MASK, RT5665_IN2_DF_MASK);
 if (rt5665->pdata.in3_diff)
  regmap_update_bits(rt5665->regmap, RT5665_IN3_IN4,
   RT5665_IN3_DF_MASK, RT5665_IN3_DF_MASK);
 if (rt5665->pdata.in4_diff)
  regmap_update_bits(rt5665->regmap, RT5665_IN3_IN4,
   RT5665_IN4_DF_MASK, RT5665_IN4_DF_MASK);


 if (rt5665->pdata.dmic1_data_pin != RT5665_DMIC1_NULL ||
  rt5665->pdata.dmic2_data_pin != RT5665_DMIC2_NULL) {
  regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_2,
   RT5665_GP9_PIN_MASK, RT5665_GP9_PIN_DMIC1_SCL);
  regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_1,
    RT5665_GP8_PIN_MASK, RT5665_GP8_PIN_DMIC2_SCL);
  switch (rt5665->pdata.dmic1_data_pin) {
  case 130:
   regmap_update_bits(rt5665->regmap, RT5665_DMIC_CTRL_1,
    RT5665_DMIC_1_DP_MASK, RT5665_DMIC_1_DP_IN2N);
   break;

  case 131:
   regmap_update_bits(rt5665->regmap, RT5665_DMIC_CTRL_1,
    RT5665_DMIC_1_DP_MASK, RT5665_DMIC_1_DP_GPIO4);
   regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_1,
    RT5665_GP4_PIN_MASK, RT5665_GP4_PIN_DMIC1_SDA);
   break;

  default:
   dev_dbg(&i2c->dev, "no DMIC1\n");
   break;
  }

  switch (rt5665->pdata.dmic2_data_pin) {
  case 128:
   regmap_update_bits(rt5665->regmap, RT5665_DMIC_CTRL_1,
    RT5665_DMIC_2_DP_MASK, RT5665_DMIC_2_DP_IN2P);
   break;

  case 129:
   regmap_update_bits(rt5665->regmap,
    RT5665_DMIC_CTRL_1,
    RT5665_DMIC_2_DP_MASK,
    RT5665_DMIC_2_DP_GPIO5);
   regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_1,
    RT5665_GP5_PIN_MASK, RT5665_GP5_PIN_DMIC2_SDA);
   break;

  default:
   dev_dbg(&i2c->dev, "no DMIC2\n");
   break;

  }
 }

 regmap_write(rt5665->regmap, RT5665_HP_LOGIC_CTRL_2, 0x0002);
 regmap_update_bits(rt5665->regmap, RT5665_EJD_CTRL_1,
  0xf000 | RT5665_VREF_POW_MASK, 0xe000 | RT5665_VREF_POW_REG);

 regmap_update_bits(rt5665->regmap, RT5665_STO1_DAC_SIL_DET,
  RT5665_DEB_STO_DAC_MASK, RT5665_DEB_80_MS);

 regmap_update_bits(rt5665->regmap, RT5665_HP_CHARGE_PUMP_1,
  RT5665_PM_HP_MASK, RT5665_PM_HP_HV);


 if (rt5665->id == CODEC_5666) {
  regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_2,
   RT5665_GP4_PF_MASK, RT5665_GP4_PF_IN);
  regmap_update_bits(rt5665->regmap, RT5665_GPIO_CTRL_3,
   RT5665_GP8_PF_MASK, RT5665_GP8_PF_IN);
 }


 regmap_update_bits(rt5665->regmap, RT5665_PWR_ANLG_1,
  RT5665_HP_DRIVER_MASK | RT5665_LDO1_DVO_MASK,
  RT5665_HP_DRIVER_5X | RT5665_LDO1_DVO_12);

 INIT_DELAYED_WORK(&rt5665->jack_detect_work,
    rt5665_jack_detect_handler);
 INIT_DELAYED_WORK(&rt5665->calibrate_work,
    rt5665_calibrate_handler);
 INIT_DELAYED_WORK(&rt5665->jd_check_work,
    rt5665_jd_check_handler);

 mutex_init(&rt5665->calibrate_mutex);

 if (i2c->irq) {
  ret = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0),
   rt5665_irq, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING
   | IRQF_ONESHOT, "rt5665", rt5665);
  if (ret)
   dev_err(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);

 }

 return devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_rt5665,
   rt5665_dai, ARRAY_SIZE(rt5665_dai));
}
