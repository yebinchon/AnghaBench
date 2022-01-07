
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas6424_data {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int TAS6424_ALL_STATE_HIZ ;
 int TAS6424_CH_STATE_CTRL ;
 int dev_err (int ,char*,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 struct tas6424_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int tas6424_power_off(struct snd_soc_component *component)
{
 struct tas6424_data *tas6424 = snd_soc_component_get_drvdata(component);
 int ret;

 snd_soc_component_write(component, TAS6424_CH_STATE_CTRL, TAS6424_ALL_STATE_HIZ);

 regcache_cache_only(tas6424->regmap, 1);
 regcache_mark_dirty(tas6424->regmap);

 ret = regulator_bulk_disable(ARRAY_SIZE(tas6424->supplies),
         tas6424->supplies);
 if (ret < 0) {
  dev_err(component->dev, "failed to disable supplies: %d\n", ret);
  return ret;
 }

 return 0;
}
