
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1011_priv {int cali_work; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT1011_DEVICE_ID ;
 unsigned int RT1011_DEVICE_ID_NUM ;
 int dev_err (int *,char*,unsigned int) ;
 struct rt1011_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt1011_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int rt1011_calibration_work ;
 int rt1011_dai ;
 int rt1011_regmap ;
 int soc_component_dev_rt1011 ;

__attribute__((used)) static int rt1011_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt1011_priv *rt1011;
 int ret;
 unsigned int val;

 rt1011 = devm_kzalloc(&i2c->dev, sizeof(struct rt1011_priv),
    GFP_KERNEL);
 if (rt1011 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt1011);

 rt1011->regmap = devm_regmap_init_i2c(i2c, &rt1011_regmap);
 if (IS_ERR(rt1011->regmap)) {
  ret = PTR_ERR(rt1011->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 regmap_read(rt1011->regmap, RT1011_DEVICE_ID, &val);
 if (val != RT1011_DEVICE_ID_NUM) {
  dev_err(&i2c->dev,
   "Device with ID register %x is not rt1011\n", val);
  return -ENODEV;
 }

 INIT_WORK(&rt1011->cali_work, rt1011_calibration_work);

 return devm_snd_soc_register_component(&i2c->dev,
  &soc_component_dev_rt1011,
  rt1011_dai, ARRAY_SIZE(rt1011_dai));

}
