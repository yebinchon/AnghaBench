
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm4567 {int regmap; } ;


 int SSM4567_POWER_SPWDN ;
 int SSM4567_REG_POWER_CTRL ;
 int SSM4567_REG_SOFT_RESET ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ssm4567_set_power(struct ssm4567 *ssm4567, bool enable)
{
 int ret = 0;

 if (!enable) {
  ret = regmap_update_bits(ssm4567->regmap,
   SSM4567_REG_POWER_CTRL,
   SSM4567_POWER_SPWDN, SSM4567_POWER_SPWDN);
  regcache_mark_dirty(ssm4567->regmap);
 }

 regcache_cache_only(ssm4567->regmap, !enable);

 if (enable) {
  ret = regmap_write(ssm4567->regmap, SSM4567_REG_SOFT_RESET,
   0x00);
  if (ret)
   return ret;

  ret = regmap_update_bits(ssm4567->regmap,
   SSM4567_REG_POWER_CTRL,
   SSM4567_POWER_SPWDN, 0x00);
  regcache_sync(ssm4567->regmap);
 }

 return ret;
}
