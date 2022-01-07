
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int irq; } ;
struct es8316_priv {int irq; int lock; int regmap; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_warn (struct device*,char*,int ,int) ;
 struct es8316_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct es8316_priv*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int disable_irq (int ) ;
 int es8316_dai ;
 int es8316_irq ;
 int es8316_regmap ;
 int i2c_set_clientdata (struct i2c_client*,struct es8316_priv*) ;
 int mutex_init (int *) ;
 int soc_component_dev_es8316 ;

__attribute__((used)) static int es8316_i2c_probe(struct i2c_client *i2c_client,
       const struct i2c_device_id *id)
{
 struct device *dev = &i2c_client->dev;
 struct es8316_priv *es8316;
 int ret;

 es8316 = devm_kzalloc(&i2c_client->dev, sizeof(struct es8316_priv),
         GFP_KERNEL);
 if (es8316 == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c_client, es8316);

 es8316->regmap = devm_regmap_init_i2c(i2c_client, &es8316_regmap);
 if (IS_ERR(es8316->regmap))
  return PTR_ERR(es8316->regmap);

 es8316->irq = i2c_client->irq;
 mutex_init(&es8316->lock);

 ret = devm_request_threaded_irq(dev, es8316->irq, ((void*)0), es8316_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "es8316", es8316);
 if (ret == 0) {

  disable_irq(es8316->irq);
 } else {
  dev_warn(dev, "Failed to get IRQ %d: %d\n", es8316->irq, ret);
  es8316->irq = -ENXIO;
 }

 return devm_snd_soc_register_component(&i2c_client->dev,
          &soc_component_dev_es8316,
          &es8316_dai, 1);
}
