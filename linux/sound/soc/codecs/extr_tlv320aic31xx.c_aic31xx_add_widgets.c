
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int codec_type; } ;


 int AIC31XX_STEREO_CLASS_D_BIT ;
 int ARRAY_SIZE (int ) ;
 int DAC31XX_BIT ;
 int aic310x_audio_map ;
 int aic310x_dapm_widgets ;
 int aic311x_audio_map ;
 int aic311x_dapm_widgets ;
 int aic31xx_audio_map ;
 int aic31xx_dapm_widgets ;
 int dac31xx_audio_map ;
 int dac31xx_dapm_widgets ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int aic31xx_add_widgets(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);
 int ret = 0;

 if (aic31xx->codec_type & DAC31XX_BIT) {
  ret = snd_soc_dapm_new_controls(
   dapm, dac31xx_dapm_widgets,
   ARRAY_SIZE(dac31xx_dapm_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, dac31xx_audio_map,
           ARRAY_SIZE(dac31xx_audio_map));
  if (ret)
   return ret;
 } else {
  ret = snd_soc_dapm_new_controls(
   dapm, aic31xx_dapm_widgets,
   ARRAY_SIZE(aic31xx_dapm_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, aic31xx_audio_map,
           ARRAY_SIZE(aic31xx_audio_map));
  if (ret)
   return ret;
 }

 if (aic31xx->codec_type & AIC31XX_STEREO_CLASS_D_BIT) {
  ret = snd_soc_dapm_new_controls(
   dapm, aic311x_dapm_widgets,
   ARRAY_SIZE(aic311x_dapm_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, aic311x_audio_map,
           ARRAY_SIZE(aic311x_audio_map));
  if (ret)
   return ret;
 } else {
  ret = snd_soc_dapm_new_controls(
   dapm, aic310x_dapm_widgets,
   ARRAY_SIZE(aic310x_dapm_widgets));
  if (ret)
   return ret;

  ret = snd_soc_dapm_add_routes(dapm, aic310x_audio_map,
           ARRAY_SIZE(aic310x_audio_map));
  if (ret)
   return ret;
 }

 return 0;
}
