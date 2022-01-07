
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct adau1781_platform_data {scalar_t__ use_dmic; int right_input_differential; int left_input_differential; } ;
struct adau {int dummy; } ;


 int ADAU1781_LEFT_PGA ;
 int ADAU1781_RIGHT_PGA ;
 int ARRAY_SIZE (int ) ;
 int adau1781_adc_dapm_routes ;
 int adau1781_dmic_dapm_routes ;
 int adau1781_dmic_dapm_widgets ;
 int adau1781_set_input_mode (struct adau*,int ,int ) ;
 int adau17x1_add_routes (struct snd_soc_component*) ;
 int adau17x1_add_widgets (struct snd_soc_component*) ;
 struct adau1781_platform_data* dev_get_platdata (int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int adau1781_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adau1781_platform_data *pdata = dev_get_platdata(component->dev);
 struct adau *adau = snd_soc_component_get_drvdata(component);
 int ret;

 ret = adau17x1_add_widgets(component);
 if (ret)
  return ret;

 if (pdata) {
  ret = adau1781_set_input_mode(adau, ADAU1781_LEFT_PGA,
   pdata->left_input_differential);
  if (ret)
   return ret;
  ret = adau1781_set_input_mode(adau, ADAU1781_RIGHT_PGA,
   pdata->right_input_differential);
  if (ret)
   return ret;
 }

 if (pdata && pdata->use_dmic) {
  ret = snd_soc_dapm_new_controls(dapm,
   adau1781_dmic_dapm_widgets,
   ARRAY_SIZE(adau1781_dmic_dapm_widgets));
  if (ret)
   return ret;
  ret = snd_soc_dapm_add_routes(dapm, adau1781_dmic_dapm_routes,
   ARRAY_SIZE(adau1781_dmic_dapm_routes));
  if (ret)
   return ret;
 } else {
  ret = snd_soc_dapm_add_routes(dapm, adau1781_adc_dapm_routes,
   ARRAY_SIZE(adau1781_adc_dapm_routes));
  if (ret)
   return ret;
 }

 ret = adau17x1_add_routes(component);
 if (ret < 0)
  return ret;

 return 0;
}
