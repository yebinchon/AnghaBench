
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ml26124_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct ml26124_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ml26124_priv*) ;
 int ml26124_dai ;
 int ml26124_i2c_regmap ;
 int soc_component_dev_ml26124 ;

__attribute__((used)) static int ml26124_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct ml26124_priv *priv;
 int ret;

 priv = devm_kzalloc(&i2c->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 i2c_set_clientdata(i2c, priv);

 priv->regmap = devm_regmap_init_i2c(i2c, &ml26124_i2c_regmap);
 if (IS_ERR(priv->regmap)) {
  ret = PTR_ERR(priv->regmap);
  dev_err(&i2c->dev, "regmap_init_i2c() failed: %d\n", ret);
  return ret;
 }

 return devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_ml26124, &ml26124_dai, 1);
}
