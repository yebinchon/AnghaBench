
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpa6130a2_data {scalar_t__ power_gpio; int dev; int supply; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int gpio_set_value (scalar_t__,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int tpa6130a2_power(struct tpa6130a2_data *data, bool enable)
{
 int ret = 0, ret2;

 if (enable) {
  ret = regulator_enable(data->supply);
  if (ret != 0) {
   dev_err(data->dev,
    "Failed to enable supply: %d\n", ret);
   return ret;
  }

  if (data->power_gpio >= 0)
   gpio_set_value(data->power_gpio, 1);


  regcache_cache_only(data->regmap, 0);
  ret = regcache_sync(data->regmap);
  if (ret != 0) {
   dev_err(data->dev,
    "Failed to sync registers: %d\n", ret);
   regcache_cache_only(data->regmap, 1);
   if (data->power_gpio >= 0)
    gpio_set_value(data->power_gpio, 0);
   ret2 = regulator_disable(data->supply);
   if (ret2 != 0)
    dev_err(data->dev,
     "Failed to disable supply: %d\n", ret2);
   return ret;
  }
 } else {




  regcache_mark_dirty(data->regmap);
  regcache_cache_only(data->regmap, 1);


  if (data->power_gpio >= 0)
   gpio_set_value(data->power_gpio, 0);

  ret = regulator_disable(data->supply);
  if (ret != 0) {
   dev_err(data->dev,
    "Failed to disable supply: %d\n", ret);
   return ret;
  }
 }

 return ret;
}
