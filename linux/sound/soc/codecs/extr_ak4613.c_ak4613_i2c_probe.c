
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct of_device_id {struct regmap_config* data; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct ak4613_priv {int lock; int dummy_write_work; scalar_t__ sysclk; scalar_t__ cnt; int * iface; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int ak4613_dai ;
 int ak4613_dummy_write ;
 int ak4613_of_match ;
 int ak4613_parse_of (struct ak4613_priv*,struct device*) ;
 struct ak4613_priv* devm_kzalloc (struct device*,int,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ak4613_priv*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int soc_component_dev_ak4613 ;

__attribute__((used)) static int ak4613_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct device *dev = &i2c->dev;
 struct device_node *np = dev->of_node;
 const struct regmap_config *regmap_cfg;
 struct regmap *regmap;
 struct ak4613_priv *priv;

 regmap_cfg = ((void*)0);
 if (np) {
  const struct of_device_id *of_id;

  of_id = of_match_device(ak4613_of_match, dev);
  if (of_id)
   regmap_cfg = of_id->data;
 } else {
  regmap_cfg = (const struct regmap_config *)id->driver_data;
 }

 if (!regmap_cfg)
  return -EINVAL;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 ak4613_parse_of(priv, dev);

 priv->iface = ((void*)0);
 priv->cnt = 0;
 priv->sysclk = 0;
 INIT_WORK(&priv->dummy_write_work, ak4613_dummy_write);

 mutex_init(&priv->lock);

 i2c_set_clientdata(i2c, priv);

 regmap = devm_regmap_init_i2c(i2c, regmap_cfg);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return devm_snd_soc_register_component(dev, &soc_component_dev_ak4613,
          &ak4613_dai, 1);
}
