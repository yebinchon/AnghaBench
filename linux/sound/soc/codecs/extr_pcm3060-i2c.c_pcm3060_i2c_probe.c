
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm3060_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct pcm3060_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcm3060_priv*) ;
 int pcm3060_probe (int *) ;
 int pcm3060_regmap ;

__attribute__((used)) static int pcm3060_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct pcm3060_priv *priv;

 priv = devm_kzalloc(&i2c->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 i2c_set_clientdata(i2c, priv);

 priv->regmap = devm_regmap_init_i2c(i2c, &pcm3060_regmap);
 if (IS_ERR(priv->regmap))
  return PTR_ERR(priv->regmap);

 return pcm3060_probe(&i2c->dev);
}
