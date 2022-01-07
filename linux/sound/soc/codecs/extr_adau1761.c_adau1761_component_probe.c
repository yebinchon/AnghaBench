
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct adau1761_platform_data {scalar_t__ input_differential; } ;
struct adau {scalar_t__ type; int regmap; } ;
struct TYPE_2__ {struct adau1761_platform_data* platform_data; } ;


 scalar_t__ ADAU1761 ;
 int ADAU1761_DIFF_INPUT_VOL_LDEN ;
 int ADAU1761_LEFT_DIFF_INPUT_VOL ;


 int ADAU1761_PLAY_LINE_LEFT_VOL ;
 int ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP ;
 int ADAU1761_PLAY_LINE_RIGHT_VOL ;
 int ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP ;
 int ADAU1761_RIGHT_DIFF_INPUT_VOL ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int adau1761_dapm_routes ;
 int adau1761_dapm_widgets ;
 int adau1761_differential_mode_controls ;
 int adau1761_get_lineout_mode (struct snd_soc_component*) ;
 int adau1761_setup_digmic_jackdetect (struct snd_soc_component*) ;
 int adau1761_setup_headphone_mode (struct snd_soc_component*) ;
 int adau1761_single_mode_controls ;
 int adau17x1_add_routes (struct snd_soc_component*) ;
 int adau17x1_add_widgets (struct snd_soc_component*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int adau1761_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adau1761_platform_data *pdata = component->dev->platform_data;
 struct adau *adau = snd_soc_component_get_drvdata(component);
 int ret;

 ret = adau17x1_add_widgets(component);
 if (ret < 0)
  return ret;

 if (pdata && pdata->input_differential) {
  regmap_update_bits(adau->regmap, ADAU1761_LEFT_DIFF_INPUT_VOL,
   ADAU1761_DIFF_INPUT_VOL_LDEN,
   ADAU1761_DIFF_INPUT_VOL_LDEN);
  regmap_update_bits(adau->regmap, ADAU1761_RIGHT_DIFF_INPUT_VOL,
   ADAU1761_DIFF_INPUT_VOL_LDEN,
   ADAU1761_DIFF_INPUT_VOL_LDEN);
  ret = snd_soc_add_component_controls(component,
   adau1761_differential_mode_controls,
   ARRAY_SIZE(adau1761_differential_mode_controls));
  if (ret)
   return ret;
 } else {
  ret = snd_soc_add_component_controls(component,
   adau1761_single_mode_controls,
   ARRAY_SIZE(adau1761_single_mode_controls));
  if (ret)
   return ret;
 }

 switch (adau1761_get_lineout_mode(component)) {
 case 128:
  break;
 case 129:
  regmap_update_bits(adau->regmap, ADAU1761_PLAY_LINE_LEFT_VOL,
   ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP,
   ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP);
  regmap_update_bits(adau->regmap, ADAU1761_PLAY_LINE_RIGHT_VOL,
   ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP,
   ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP);
  break;
 default:
  return -EINVAL;
 }

 ret = adau1761_setup_headphone_mode(component);
 if (ret)
  return ret;

 ret = adau1761_setup_digmic_jackdetect(component);
 if (ret)
  return ret;

 if (adau->type == ADAU1761) {
  ret = snd_soc_dapm_new_controls(dapm, adau1761_dapm_widgets,
   ARRAY_SIZE(adau1761_dapm_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, adau1761_dapm_routes,
   ARRAY_SIZE(adau1761_dapm_routes));
  if (ret)
   return ret;
 }

 ret = adau17x1_add_routes(component);
 if (ret < 0)
  return ret;

 return 0;
}
