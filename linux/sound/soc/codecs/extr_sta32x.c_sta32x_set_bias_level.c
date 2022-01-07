
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta32x_priv {int supplies; int gpiod_nreset; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int STA32X_CONFF ;
 int STA32X_CONFF_EAPD ;
 int STA32X_CONFF_PWDN ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct sta32x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int sta32x_cache_sync (struct snd_soc_component*) ;
 int sta32x_startup_sequence (struct sta32x_priv*) ;
 int sta32x_watchdog_start (struct sta32x_priv*) ;
 int sta32x_watchdog_stop (struct sta32x_priv*) ;

__attribute__((used)) static int sta32x_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 int ret;
 struct sta32x_priv *sta32x = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "level = %d\n", level);
 switch (level) {
 case 130:
  break;

 case 129:

  regmap_update_bits(sta32x->regmap, STA32X_CONFF,
        STA32X_CONFF_PWDN | STA32X_CONFF_EAPD,
        STA32X_CONFF_PWDN | STA32X_CONFF_EAPD);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(sta32x->supplies),
          sta32x->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n", ret);
    return ret;
   }

   sta32x_startup_sequence(sta32x);
   sta32x_cache_sync(component);
   sta32x_watchdog_start(sta32x);
  }


  regmap_update_bits(sta32x->regmap, STA32X_CONFF,
       STA32X_CONFF_PWDN | STA32X_CONFF_EAPD,
       0);

  break;

 case 131:

  regmap_update_bits(sta32x->regmap, STA32X_CONFF,
       STA32X_CONFF_PWDN | STA32X_CONFF_EAPD, 0);
  msleep(300);
  sta32x_watchdog_stop(sta32x);

  gpiod_set_value(sta32x->gpiod_nreset, 0);

  regulator_bulk_disable(ARRAY_SIZE(sta32x->supplies),
           sta32x->supplies);
  break;
 }
 return 0;
}
