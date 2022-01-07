
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5616_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5616_DEVICE_ID ;
 int RT5616_PWR_ANLG1 ;
 int RT5616_PWR_BG ;
 int RT5616_PWR_FV1 ;
 int RT5616_PWR_FV2 ;
 int RT5616_PWR_LDO_DVO_1_2V ;
 int RT5616_PWR_LDO_DVO_MASK ;
 int RT5616_PWR_MB ;
 int RT5616_PWR_VREF1 ;
 int RT5616_PWR_VREF2 ;
 int RT5616_RESET ;
 int dev_err (int *,char*,unsigned int) ;
 int dev_warn (int *,char*,int) ;
 struct rt5616_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5616_priv*) ;
 int init_list ;
 int mdelay (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;
 int rt5616_dai ;
 int rt5616_regmap ;
 int soc_component_dev_rt5616 ;

__attribute__((used)) static int rt5616_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct rt5616_priv *rt5616;
 unsigned int val;
 int ret;

 rt5616 = devm_kzalloc(&i2c->dev, sizeof(struct rt5616_priv),
         GFP_KERNEL);
 if (!rt5616)
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5616);

 rt5616->regmap = devm_regmap_init_i2c(i2c, &rt5616_regmap);
 if (IS_ERR(rt5616->regmap)) {
  ret = PTR_ERR(rt5616->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt5616->regmap, RT5616_DEVICE_ID, &val);
 if (val != 0x6281) {
  dev_err(&i2c->dev,
   "Device with ID register %#x is not rt5616\n",
   val);
  return -ENODEV;
 }
 regmap_write(rt5616->regmap, RT5616_RESET, 0);
 regmap_update_bits(rt5616->regmap, RT5616_PWR_ANLG1,
      RT5616_PWR_VREF1 | RT5616_PWR_MB |
      RT5616_PWR_BG | RT5616_PWR_VREF2,
      RT5616_PWR_VREF1 | RT5616_PWR_MB |
      RT5616_PWR_BG | RT5616_PWR_VREF2);
 mdelay(10);
 regmap_update_bits(rt5616->regmap, RT5616_PWR_ANLG1,
      RT5616_PWR_FV1 | RT5616_PWR_FV2,
      RT5616_PWR_FV1 | RT5616_PWR_FV2);

 ret = regmap_register_patch(rt5616->regmap, init_list,
        ARRAY_SIZE(init_list));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 regmap_update_bits(rt5616->regmap, RT5616_PWR_ANLG1,
      RT5616_PWR_LDO_DVO_MASK, RT5616_PWR_LDO_DVO_1_2V);

 return devm_snd_soc_register_component(&i2c->dev,
          &soc_component_dev_rt5616,
          rt5616_dai, ARRAY_SIZE(rt5616_dai));
}
