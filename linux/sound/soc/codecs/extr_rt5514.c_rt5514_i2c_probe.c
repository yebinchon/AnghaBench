
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5514_platform_data {int dummy; } ;
struct rt5514_priv {int regmap; int i2c_regmap; struct rt5514_platform_data pdata; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int RT5514_DEVICE_ID ;
 int RT5514_VENDOR_ID2 ;
 int dev_err (int *,char*,unsigned int) ;
 struct rt5514_platform_data* dev_get_platdata (int *) ;
 int dev_warn (int *,char*,int) ;
 struct rt5514_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init (int *,int *,struct i2c_client*,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5514_priv*) ;
 int regmap_multi_reg_write (int ,int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_register_patch (int ,int ,int ) ;
 int rt5514_dai ;
 int rt5514_i2c_patch ;
 int rt5514_i2c_regmap ;
 int rt5514_parse_dp (struct rt5514_priv*,int *) ;
 int rt5514_patch ;
 int rt5514_regmap ;
 int soc_component_dev_rt5514 ;

__attribute__((used)) static int rt5514_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5514_platform_data *pdata = dev_get_platdata(&i2c->dev);
 struct rt5514_priv *rt5514;
 int ret;
 unsigned int val = ~0;

 rt5514 = devm_kzalloc(&i2c->dev, sizeof(struct rt5514_priv),
    GFP_KERNEL);
 if (rt5514 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5514);

 if (pdata)
  rt5514->pdata = *pdata;
 else
  rt5514_parse_dp(rt5514, &i2c->dev);

 rt5514->i2c_regmap = devm_regmap_init_i2c(i2c, &rt5514_i2c_regmap);
 if (IS_ERR(rt5514->i2c_regmap)) {
  ret = PTR_ERR(rt5514->i2c_regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 rt5514->regmap = devm_regmap_init(&i2c->dev, ((void*)0), i2c, &rt5514_regmap);
 if (IS_ERR(rt5514->regmap)) {
  ret = PTR_ERR(rt5514->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }







 ret = regmap_read(rt5514->regmap, RT5514_VENDOR_ID2, &val);
 if (ret || val != RT5514_DEVICE_ID)
  ret = regmap_read(rt5514->regmap, RT5514_VENDOR_ID2, &val);
 if (ret || val != RT5514_DEVICE_ID) {
  dev_err(&i2c->dev,
   "Device with ID register %x is not rt5514\n", val);
  return -ENODEV;
 }

 ret = regmap_multi_reg_write(rt5514->i2c_regmap, rt5514_i2c_patch,
        ARRAY_SIZE(rt5514_i2c_patch));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply i2c_regmap patch: %d\n",
   ret);

 ret = regmap_register_patch(rt5514->regmap, rt5514_patch,
        ARRAY_SIZE(rt5514_patch));
 if (ret != 0)
  dev_warn(&i2c->dev, "Failed to apply regmap patch: %d\n", ret);

 return devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_rt5514,
   rt5514_dai, ARRAY_SIZE(rt5514_dai));
}
