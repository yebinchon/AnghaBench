
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2518 {int regmap; int enable_gpio; } ;


 int SSM2518_POWER1_RESET ;
 int SSM2518_POWER1_SPWDN ;
 int SSM2518_REG_POWER1 ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ssm2518_set_power(struct ssm2518 *ssm2518, bool enable)
{
 int ret = 0;

 if (!enable) {
  ret = regmap_update_bits(ssm2518->regmap, SSM2518_REG_POWER1,
   SSM2518_POWER1_SPWDN, SSM2518_POWER1_SPWDN);
  regcache_mark_dirty(ssm2518->regmap);
 }

 if (gpio_is_valid(ssm2518->enable_gpio))
  gpio_set_value(ssm2518->enable_gpio, enable);

 regcache_cache_only(ssm2518->regmap, !enable);

 if (enable) {
  ret = regmap_update_bits(ssm2518->regmap, SSM2518_REG_POWER1,
   SSM2518_POWER1_SPWDN | SSM2518_POWER1_RESET, 0x00);
  regcache_sync(ssm2518->regmap);
 }

 return ret;
}
