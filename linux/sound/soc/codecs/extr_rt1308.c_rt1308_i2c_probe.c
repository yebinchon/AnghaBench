
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1308_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int RT1308_DEVICE_ID_NUM ;
 int RT1308_VEN_DEV_ID ;
 int dev_err (int *,char*,unsigned int) ;
 struct rt1308_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt1308_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int rt1308_dai ;
 int rt1308_efuse (struct rt1308_priv*) ;
 int rt1308_regmap ;
 int soc_component_dev_rt1308 ;

__attribute__((used)) static int rt1308_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt1308_priv *rt1308;
 int ret;
 unsigned int val;

 rt1308 = devm_kzalloc(&i2c->dev, sizeof(struct rt1308_priv),
    GFP_KERNEL);
 if (rt1308 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt1308);

 rt1308->regmap = devm_regmap_init_i2c(i2c, &rt1308_regmap);
 if (IS_ERR(rt1308->regmap)) {
  ret = PTR_ERR(rt1308->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt1308->regmap, RT1308_VEN_DEV_ID, &val);

 if ((val & 0xFFFFFF00) != RT1308_DEVICE_ID_NUM) {
  dev_err(&i2c->dev,
   "Device with ID register %x is not rt1308\n", val);
  return -ENODEV;
 }

 rt1308_efuse(rt1308);

 return devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_rt1308,
   rt1308_dai, ARRAY_SIZE(rt1308_dai));
}
