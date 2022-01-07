
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm1681_private {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct pcm1681_private* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcm1681_private*) ;
 int pcm1681_dai ;
 int pcm1681_regmap ;
 int soc_component_dev_pcm1681 ;

__attribute__((used)) static int pcm1681_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 int ret;
 struct pcm1681_private *priv;

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regmap = devm_regmap_init_i2c(client, &pcm1681_regmap);
 if (IS_ERR(priv->regmap)) {
  ret = PTR_ERR(priv->regmap);
  dev_err(&client->dev, "Failed to create regmap: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(client, priv);

 return devm_snd_soc_register_component(&client->dev,
  &soc_component_dev_pcm1681,
  &pcm1681_dai, 1);
}
