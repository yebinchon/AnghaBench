
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm49453_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct lm49453_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm49453_priv*) ;
 int lm49453_dai ;
 int lm49453_regmap_config ;
 int soc_component_dev_lm49453 ;

__attribute__((used)) static int lm49453_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct lm49453_priv *lm49453;
 int ret = 0;

 lm49453 = devm_kzalloc(&i2c->dev, sizeof(struct lm49453_priv),
    GFP_KERNEL);

 if (lm49453 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, lm49453);

 lm49453->regmap = devm_regmap_init_i2c(i2c, &lm49453_regmap_config);
 if (IS_ERR(lm49453->regmap)) {
  ret = PTR_ERR(lm49453->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
          &soc_component_dev_lm49453,
          lm49453_dai, ARRAY_SIZE(lm49453_dai));
 if (ret < 0)
  dev_err(&i2c->dev, "Failed to register component: %d\n", ret);

 return ret;
}
