
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct aud96p22_priv {int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int aud96p22_dai ;
 int aud96p22_driver ;
 int aud96p22_regmap ;
 int dev_err (struct device*,char*,int) ;
 struct aud96p22_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct aud96p22_priv*) ;

__attribute__((used)) static int aud96p22_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct aud96p22_priv *priv;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return -ENOMEM;

 priv->regmap = devm_regmap_init_i2c(i2c, &aud96p22_regmap);
 if (IS_ERR(priv->regmap)) {
  ret = PTR_ERR(priv->regmap);
  dev_err(dev, "failed to init i2c regmap: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, priv);

 ret = devm_snd_soc_register_component(dev, &aud96p22_driver, &aud96p22_dai, 1);
 if (ret) {
  dev_err(dev, "failed to register component: %d\n", ret);
  return ret;
 }

 return 0;
}
