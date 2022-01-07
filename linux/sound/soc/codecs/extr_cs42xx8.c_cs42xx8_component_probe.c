
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct cs42xx8_priv {int regmap; TYPE_1__* drvdata; } ;
struct TYPE_2__ {int num_adcs; } ;


 int ARRAY_SIZE (int ) ;
 int CS42XX8_DACMUTE ;
 int CS42XX8_DACMUTE_ALL ;
 int cs42xx8_adc3_dapm_routes ;
 int cs42xx8_adc3_dapm_widgets ;
 int cs42xx8_adc3_snd_controls ;
 int regmap_write (int ,int ,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs42xx8_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int cs42xx8_component_probe(struct snd_soc_component *component)
{
 struct cs42xx8_priv *cs42xx8 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 switch (cs42xx8->drvdata->num_adcs) {
 case 3:
  snd_soc_add_component_controls(component, cs42xx8_adc3_snd_controls,
     ARRAY_SIZE(cs42xx8_adc3_snd_controls));
  snd_soc_dapm_new_controls(dapm, cs42xx8_adc3_dapm_widgets,
     ARRAY_SIZE(cs42xx8_adc3_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, cs42xx8_adc3_dapm_routes,
     ARRAY_SIZE(cs42xx8_adc3_dapm_routes));
  break;
 default:
  break;
 }


 regmap_write(cs42xx8->regmap, CS42XX8_DACMUTE, CS42XX8_DACMUTE_ALL);

 return 0;
}
