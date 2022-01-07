
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct adau1761_platform_data {int headphone_mode; } ;
struct adau {int regmap; } ;
typedef enum adau1761_output_mode { ____Placeholder_adau1761_output_mode } adau1761_output_mode ;
struct TYPE_2__ {struct adau1761_platform_data* platform_data; } ;





 int ADAU1761_PLAY_HP_RIGHT_VOL ;
 int ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP ;
 int ADAU1761_PLAY_MONO_OUTPUT_VOL ;
 int ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP ;
 int ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int adau1761_capless_dapm_routes ;
 int adau1761_capless_dapm_widgets ;
 int adau1761_mono_controls ;
 int adau1761_mono_dapm_routes ;
 int adau1761_mono_dapm_widgets ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int adau1761_setup_headphone_mode(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adau *adau = snd_soc_component_get_drvdata(component);
 struct adau1761_platform_data *pdata = component->dev->platform_data;
 enum adau1761_output_mode mode;
 int ret;

 if (pdata)
  mode = pdata->headphone_mode;
 else
  mode = 130;

 switch (mode) {
 case 128:
  break;
 case 129:
  regmap_update_bits(adau->regmap, ADAU1761_PLAY_MONO_OUTPUT_VOL,
   ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP |
   ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE,
   ADAU1761_PLAY_MONO_OUTPUT_VOL_MODE_HP |
   ADAU1761_PLAY_MONO_OUTPUT_VOL_UNMUTE);

 case 130:
  regmap_update_bits(adau->regmap, ADAU1761_PLAY_HP_RIGHT_VOL,
   ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP,
   ADAU1761_PLAY_HP_RIGHT_VOL_MODE_HP);
  break;
 default:
  return -EINVAL;
 }

 if (mode == 129) {
  ret = snd_soc_dapm_new_controls(dapm,
   adau1761_capless_dapm_widgets,
   ARRAY_SIZE(adau1761_capless_dapm_widgets));
  if (ret)
   return ret;
  ret = snd_soc_dapm_add_routes(dapm,
   adau1761_capless_dapm_routes,
   ARRAY_SIZE(adau1761_capless_dapm_routes));
 } else {
  ret = snd_soc_add_component_controls(component, adau1761_mono_controls,
   ARRAY_SIZE(adau1761_mono_controls));
  if (ret)
   return ret;
  ret = snd_soc_dapm_new_controls(dapm,
   adau1761_mono_dapm_widgets,
   ARRAY_SIZE(adau1761_mono_dapm_widgets));
  if (ret)
   return ret;
  ret = snd_soc_dapm_add_routes(dapm,
   adau1761_mono_dapm_routes,
   ARRAY_SIZE(adau1761_mono_dapm_routes));
 }

 return ret;
}
