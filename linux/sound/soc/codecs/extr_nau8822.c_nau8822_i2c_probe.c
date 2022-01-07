
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8822 {int regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NAU8822_REG_RESET ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct nau8822* dev_get_platdata (struct device*) ;
 struct nau8822* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct nau8822*) ;
 int nau8822_dai ;
 int nau8822_regmap_config ;
 int regmap_write (int ,int ,int) ;
 int soc_component_dev_nau8822 ;

__attribute__((used)) static int nau8822_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct nau8822 *nau8822 = dev_get_platdata(dev);
 int ret;

 if (!nau8822) {
  nau8822 = devm_kzalloc(dev, sizeof(*nau8822), GFP_KERNEL);
  if (nau8822 == ((void*)0))
   return -ENOMEM;
 }
 i2c_set_clientdata(i2c, nau8822);

 nau8822->regmap = devm_regmap_init_i2c(i2c, &nau8822_regmap_config);
 if (IS_ERR(nau8822->regmap)) {
  ret = PTR_ERR(nau8822->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }
 nau8822->dev = dev;


 ret = regmap_write(nau8822->regmap, NAU8822_REG_RESET, 0x00);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(dev, &soc_component_dev_nau8822,
      &nau8822_dai, 1);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to register CODEC: %d\n", ret);
  return ret;
 }

 return 0;
}
