
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8776_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8776_PWRDOWN ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8776_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8776_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8776_priv *wm8776 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_sync(wm8776->regmap);


   snd_soc_component_update_bits(component, WM8776_PWRDOWN, 1, 0);
  }

  break;
 case 131:
  snd_soc_component_update_bits(component, WM8776_PWRDOWN, 1, 1);
  break;
 }

 return 0;
}
