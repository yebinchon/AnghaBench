
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssm2518_platform_data {int enable_gpio; } ;
struct ssm2518 {int enable_gpio; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {scalar_t__ of_node; struct ssm2518_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SSM2518_POWER1_RESET ;
 int SSM2518_POWER2_APWDN ;
 int SSM2518_REG_POWER1 ;
 int SSM2518_REG_POWER2 ;
 int devm_gpio_request_one (TYPE_1__*,int,int ,char*) ;
 struct ssm2518* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 scalar_t__ gpio_is_valid (int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ssm2518*) ;
 int of_get_gpio (scalar_t__,int ) ;
 int regcache_cache_bypass (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;
 int ssm2518_component_driver ;
 int ssm2518_dai ;
 int ssm2518_regmap_config ;
 int ssm2518_set_power (struct ssm2518*,int) ;

__attribute__((used)) static int ssm2518_i2c_probe(struct i2c_client *i2c,
 const struct i2c_device_id *id)
{
 struct ssm2518_platform_data *pdata = i2c->dev.platform_data;
 struct ssm2518 *ssm2518;
 int ret;

 ssm2518 = devm_kzalloc(&i2c->dev, sizeof(*ssm2518), GFP_KERNEL);
 if (ssm2518 == ((void*)0))
  return -ENOMEM;

 if (pdata) {
  ssm2518->enable_gpio = pdata->enable_gpio;
 } else if (i2c->dev.of_node) {
  ssm2518->enable_gpio = of_get_gpio(i2c->dev.of_node, 0);
  if (ssm2518->enable_gpio < 0 && ssm2518->enable_gpio != -ENOENT)
   return ssm2518->enable_gpio;
 } else {
  ssm2518->enable_gpio = -1;
 }

 if (gpio_is_valid(ssm2518->enable_gpio)) {
  ret = devm_gpio_request_one(&i2c->dev, ssm2518->enable_gpio,
    GPIOF_OUT_INIT_HIGH, "SSM2518 nSD");
  if (ret)
   return ret;
 }

 i2c_set_clientdata(i2c, ssm2518);

 ssm2518->regmap = devm_regmap_init_i2c(i2c, &ssm2518_regmap_config);
 if (IS_ERR(ssm2518->regmap))
  return PTR_ERR(ssm2518->regmap);







 regcache_cache_bypass(ssm2518->regmap, 1);
 ret = regmap_write(ssm2518->regmap, SSM2518_REG_POWER1,
   SSM2518_POWER1_RESET);
 regcache_cache_bypass(ssm2518->regmap, 0);
 if (ret)
  return ret;

 ret = regmap_update_bits(ssm2518->regmap, SSM2518_REG_POWER2,
    SSM2518_POWER2_APWDN, 0x00);
 if (ret)
  return ret;

 ret = ssm2518_set_power(ssm2518, 0);
 if (ret)
  return ret;

 return devm_snd_soc_register_component(&i2c->dev,
   &ssm2518_component_driver,
   &ssm2518_dai, 1);
}
