
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tas6424_data {scalar_t__ mute_gpio; int regmap; int supplies; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int TAS6424_ALL_STATE_MUTE ;
 int TAS6424_ALL_STATE_PLAY ;
 int TAS6424_CH_STATE_CTRL ;
 int TAS6424_DC_DIAG_CTRL1 ;
 unsigned int TAS6424_LDGBYPASS_MASK ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int msleep (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regulator_bulk_enable (int ,int ) ;
 struct tas6424_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int tas6424_power_on(struct snd_soc_component *component)
{
 struct tas6424_data *tas6424 = snd_soc_component_get_drvdata(component);
 int ret;
 u8 chan_states;
 int no_auto_diags = 0;
 unsigned int reg_val;

 if (!regmap_read(tas6424->regmap, TAS6424_DC_DIAG_CTRL1, &reg_val))
  no_auto_diags = reg_val & TAS6424_LDGBYPASS_MASK;

 ret = regulator_bulk_enable(ARRAY_SIZE(tas6424->supplies),
        tas6424->supplies);
 if (ret < 0) {
  dev_err(component->dev, "failed to enable supplies: %d\n", ret);
  return ret;
 }

 regcache_cache_only(tas6424->regmap, 0);

 ret = regcache_sync(tas6424->regmap);
 if (ret < 0) {
  dev_err(component->dev, "failed to sync regcache: %d\n", ret);
  return ret;
 }

 if (tas6424->mute_gpio) {
  gpiod_set_value_cansleep(tas6424->mute_gpio, 0);





  chan_states = TAS6424_ALL_STATE_PLAY;
 } else {
  chan_states = TAS6424_ALL_STATE_MUTE;
 }
 snd_soc_component_write(component, TAS6424_CH_STATE_CTRL, chan_states);





 if (!no_auto_diags)
  msleep(230);

 return 0;
}
