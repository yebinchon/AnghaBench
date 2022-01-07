
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int master_dapm_route_applied; int codec_type; } ;


 int ARRAY_SIZE (int ) ;
 int DAC31XX_BIT ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int aic31xx_cm_audio_map ;
 int common31xx_cm_audio_map ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_del_routes (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int aic31xx_clock_master_routes(struct snd_soc_component *component,
           unsigned int fmt)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);
 int ret;

 fmt &= SND_SOC_DAIFMT_MASTER_MASK;
 if (fmt == SND_SOC_DAIFMT_CBS_CFS &&
     aic31xx->master_dapm_route_applied) {




  ret = snd_soc_dapm_del_routes(dapm, common31xx_cm_audio_map,
     ARRAY_SIZE(common31xx_cm_audio_map));
  if (!ret && !(aic31xx->codec_type & DAC31XX_BIT))
   ret = snd_soc_dapm_del_routes(dapm,
     aic31xx_cm_audio_map,
     ARRAY_SIZE(aic31xx_cm_audio_map));

  if (ret)
   return ret;

  aic31xx->master_dapm_route_applied = 0;
 } else if (fmt != SND_SOC_DAIFMT_CBS_CFS &&
     !aic31xx->master_dapm_route_applied) {




  ret = snd_soc_dapm_add_routes(dapm, common31xx_cm_audio_map,
     ARRAY_SIZE(common31xx_cm_audio_map));
  if (!ret && !(aic31xx->codec_type & DAC31XX_BIT))
   ret = snd_soc_dapm_add_routes(dapm,
     aic31xx_cm_audio_map,
     ARRAY_SIZE(aic31xx_cm_audio_map));

  if (ret)
   return ret;

  aic31xx->master_dapm_route_applied = 1;
 }

 return 0;
}
