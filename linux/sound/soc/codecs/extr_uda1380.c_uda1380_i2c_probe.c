
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct uda1380_priv {struct i2c_client* i2c; int reg_cache; } ;
struct uda1380_platform_data {int gpio_power; int gpio_reset; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {struct uda1380_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 int devm_gpio_request_one (TYPE_1__*,int ,int ,char*) ;
 int devm_kmemdup (TYPE_1__*,int ,int,int ) ;
 struct uda1380_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct uda1380_priv*) ;
 int soc_component_dev_uda1380 ;
 int uda1380_dai ;
 int uda1380_reg ;

__attribute__((used)) static int uda1380_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct uda1380_platform_data *pdata = i2c->dev.platform_data;
 struct uda1380_priv *uda1380;
 int ret;

 if (!pdata)
  return -EINVAL;

 uda1380 = devm_kzalloc(&i2c->dev, sizeof(struct uda1380_priv),
          GFP_KERNEL);
 if (uda1380 == ((void*)0))
  return -ENOMEM;

 if (gpio_is_valid(pdata->gpio_reset)) {
  ret = devm_gpio_request_one(&i2c->dev, pdata->gpio_reset,
   GPIOF_OUT_INIT_LOW, "uda1380 reset");
  if (ret)
   return ret;
 }

 if (gpio_is_valid(pdata->gpio_power)) {
  ret = devm_gpio_request_one(&i2c->dev, pdata->gpio_power,
   GPIOF_OUT_INIT_LOW, "uda1380 power");
  if (ret)
   return ret;
 }

 uda1380->reg_cache = devm_kmemdup(&i2c->dev,
     uda1380_reg,
     ARRAY_SIZE(uda1380_reg) * sizeof(u16),
     GFP_KERNEL);
 if (!uda1380->reg_cache)
  return -ENOMEM;

 i2c_set_clientdata(i2c, uda1380);
 uda1380->i2c = i2c;

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_uda1380, uda1380_dai, ARRAY_SIZE(uda1380_dai));
 return ret;
}
