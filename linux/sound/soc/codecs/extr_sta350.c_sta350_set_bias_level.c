
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta350_priv {int supplies; int gpiod_nreset; int gpiod_power_down; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int STA350_CONFF ;
 int STA350_CONFF_EAPD ;
 int STA350_CONFF_PWDN ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sta350_cache_sync (struct snd_soc_component*) ;
 int sta350_startup_sequence (struct sta350_priv*) ;

__attribute__((used)) static int sta350_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);
 int ret;

 dev_dbg(component->dev, "level = %d\n", level);
 switch (level) {
 case 130:
  break;

 case 129:

  regmap_update_bits(sta350->regmap, STA350_CONFF,
       STA350_CONFF_PWDN | STA350_CONFF_EAPD,
       STA350_CONFF_PWDN | STA350_CONFF_EAPD);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(
    ARRAY_SIZE(sta350->supplies),
    sta350->supplies);
   if (ret < 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }
   sta350_startup_sequence(sta350);
   sta350_cache_sync(component);
  }


  regmap_update_bits(sta350->regmap, STA350_CONFF,
       STA350_CONFF_PWDN | STA350_CONFF_EAPD,
       0);

  break;

 case 131:

  regmap_update_bits(sta350->regmap, STA350_CONFF,
       STA350_CONFF_PWDN | STA350_CONFF_EAPD, 0);


  if (sta350->gpiod_power_down)
   gpiod_set_value(sta350->gpiod_power_down, 0);

  if (sta350->gpiod_nreset)
   gpiod_set_value(sta350->gpiod_nreset, 0);

  regulator_bulk_disable(ARRAY_SIZE(sta350->supplies),
           sta350->supplies);
  break;
 }
 return 0;
}
