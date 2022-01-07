
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max9867_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int MAX9867_PWRMAN ;
 int MAX9867_SHTDOWN ;


 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct max9867_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9867_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 int err;
 struct max9867_priv *max9867 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 128:
  if (snd_soc_component_get_bias_level(component) == 129) {
   err = regcache_sync(max9867->regmap);
   if (err)
    return err;

   err = regmap_update_bits(max9867->regmap, MAX9867_PWRMAN,
       MAX9867_SHTDOWN, MAX9867_SHTDOWN);
   if (err)
    return err;
  }
  break;
 case 129:
  err = regmap_update_bits(max9867->regmap, MAX9867_PWRMAN,
      MAX9867_SHTDOWN, 0);
  if (err)
   return err;

  regcache_mark_dirty(max9867->regmap);
  break;
 default:
  break;
 }

 return 0;
}
