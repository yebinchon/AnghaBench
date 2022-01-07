
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1305_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT1305_DEVICE_ID ;
 unsigned int RT1305_DEVICE_ID_NUM ;
 int dev_err (int *,char*,unsigned int) ;
 struct rt1305_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt1305_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int rt1305_calibrate (struct rt1305_priv*) ;
 int rt1305_dai ;
 int rt1305_regmap ;
 int rt1305_reset (int ) ;
 int soc_component_dev_rt1305 ;

__attribute__((used)) static int rt1305_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt1305_priv *rt1305;
 int ret;
 unsigned int val;

 rt1305 = devm_kzalloc(&i2c->dev, sizeof(struct rt1305_priv),
    GFP_KERNEL);
 if (rt1305 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt1305);

 rt1305->regmap = devm_regmap_init_i2c(i2c, &rt1305_regmap);
 if (IS_ERR(rt1305->regmap)) {
  ret = PTR_ERR(rt1305->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt1305->regmap, RT1305_DEVICE_ID, &val);
 if (val != RT1305_DEVICE_ID_NUM) {
  dev_err(&i2c->dev,
   "Device with ID register %x is not rt1305\n", val);
  return -ENODEV;
 }

 rt1305_reset(rt1305->regmap);
 rt1305_calibrate(rt1305);

 return devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_rt1305,
   rt1305_dai, ARRAY_SIZE(rt1305_dai));
}
