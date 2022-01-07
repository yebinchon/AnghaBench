
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct cs42l56_private {int supplies; int regmap; int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;
 int CS42L56_CLKCTL_1 ;
 int CS42L56_MCLK_DIS_MASK ;
 int CS42L56_PDN_ALL_MASK ;
 int CS42L56_PWRCTL_1 ;




 int dev_err (int ,char*,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct cs42l56_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs42l56_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct cs42l56_private *cs42l56 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:
  snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
        CS42L56_MCLK_DIS_MASK, 0);
  snd_soc_component_update_bits(component, CS42L56_PWRCTL_1,
        CS42L56_PDN_ALL_MASK, 0);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_cache_only(cs42l56->regmap, 0);
   regcache_sync(cs42l56->regmap);
   ret = regulator_bulk_enable(ARRAY_SIZE(cs42l56->supplies),
          cs42l56->supplies);
   if (ret != 0) {
    dev_err(cs42l56->dev,
     "Failed to enable regulators: %d\n",
     ret);
    return ret;
   }
  }
  snd_soc_component_update_bits(component, CS42L56_PWRCTL_1,
        CS42L56_PDN_ALL_MASK, 1);
  break;
 case 131:
  snd_soc_component_update_bits(component, CS42L56_PWRCTL_1,
        CS42L56_PDN_ALL_MASK, 1);
  snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
        CS42L56_MCLK_DIS_MASK, 1);
  regcache_cache_only(cs42l56->regmap, 1);
  regulator_bulk_disable(ARRAY_SIZE(cs42l56->supplies),
          cs42l56->supplies);
  break;
 }

 return 0;
}
