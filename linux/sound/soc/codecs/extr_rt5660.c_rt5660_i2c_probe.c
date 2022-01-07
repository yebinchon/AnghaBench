
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rt5660_platform_data {scalar_t__ dmic1_data_pin; } ;
struct rt5660_priv {int regmap; struct rt5660_platform_data pdata; int mclk; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5660_AUTO_DIS_AMP ;
 unsigned int RT5660_DEVICE_ID ;
 scalar_t__ RT5660_DMIC1_DATA_GPIO2 ;
 scalar_t__ RT5660_DMIC1_DATA_IN1P ;
 int RT5660_DMIC_CTRL1 ;
 int RT5660_GEN_CTRL1 ;
 int RT5660_GP1_PIN_DMIC1_SCL ;
 int RT5660_GP1_PIN_MASK ;
 int RT5660_GPIO_CTRL1 ;
 int RT5660_MCLK_DET ;
 int RT5660_POW_CLKDET ;
 int RT5660_RESET ;
 int RT5660_SEL_DMIC_DATA_GPIO2 ;
 int RT5660_SEL_DMIC_DATA_IN1P ;
 int RT5660_SEL_DMIC_DATA_MASK ;
 int RT5660_VENDOR_ID2 ;
 int dev_err (TYPE_1__*,char*,unsigned int) ;
 struct rt5660_platform_data* dev_get_platdata (TYPE_1__*) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 struct rt5660_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5660_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 int rt5660_dai ;
 int rt5660_parse_dt (struct rt5660_priv*,TYPE_1__*) ;
 int rt5660_patch ;
 int rt5660_regmap ;
 int soc_component_dev_rt5660 ;

__attribute__((used)) static int rt5660_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5660_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct rt5660_priv *rt5660;
 int ret;
 unsigned int val;

 rt5660 = devm_kzalloc(&i2c->dev, sizeof(struct rt5660_priv),
  GFP_KERNEL);

 if (rt5660 == ((void*)0))
  return -ENOMEM;


 rt5660->mclk = devm_clk_get(&i2c->dev, "mclk");
 if (PTR_ERR(rt5660->mclk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 i2c_set_clientdata(i2c, rt5660);

 if (pdata)
  rt5660->pdata = *pdata;
 else if (i2c->dev.of_node)
  rt5660_parse_dt(rt5660, &i2c->dev);

 rt5660->regmap = devm_regmap_init_i2c(i2c, &rt5660_regmap);
 if (IS_ERR(rt5660->regmap)) {
  ret = PTR_ERR(rt5660->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt5660->regmap, RT5660_VENDOR_ID2, &val);
 if (val != RT5660_DEVICE_ID) {
  dev_err(&i2c->dev,
   "Device with ID register %#x is not rt5660\n", val);
  return -ENODEV;
 }

 regmap_write(rt5660->regmap, RT5660_RESET, 0);

 ret = regmap_register_patch(rt5660->regmap, rt5660_patch,
        ARRAY_SIZE(rt5660_patch));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 regmap_update_bits(rt5660->regmap, RT5660_GEN_CTRL1,
  RT5660_AUTO_DIS_AMP | RT5660_MCLK_DET | RT5660_POW_CLKDET,
  RT5660_AUTO_DIS_AMP | RT5660_MCLK_DET | RT5660_POW_CLKDET);

 if (rt5660->pdata.dmic1_data_pin) {
  regmap_update_bits(rt5660->regmap, RT5660_GPIO_CTRL1,
   RT5660_GP1_PIN_MASK, RT5660_GP1_PIN_DMIC1_SCL);

  if (rt5660->pdata.dmic1_data_pin == RT5660_DMIC1_DATA_GPIO2)
   regmap_update_bits(rt5660->regmap, RT5660_DMIC_CTRL1,
    RT5660_SEL_DMIC_DATA_MASK,
    RT5660_SEL_DMIC_DATA_GPIO2);
  else if (rt5660->pdata.dmic1_data_pin == RT5660_DMIC1_DATA_IN1P)
   regmap_update_bits(rt5660->regmap, RT5660_DMIC_CTRL1,
    RT5660_SEL_DMIC_DATA_MASK,
    RT5660_SEL_DMIC_DATA_IN1P);
 }

 return devm_snd_soc_register_component(&i2c->dev,
          &soc_component_dev_rt5660,
          rt5660_dai, ARRAY_SIZE(rt5660_dai));
}
