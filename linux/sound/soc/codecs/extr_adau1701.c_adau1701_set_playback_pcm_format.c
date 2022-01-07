
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1701 {scalar_t__ dai_fmt; int regmap; } ;


 int ADAU1701_SERICTL ;
 int ADAU1701_SERICTL_MODE_MASK ;
 unsigned int ADAU1701_SERICTL_RIGHTJ_16 ;
 unsigned int ADAU1701_SERICTL_RIGHTJ_20 ;
 unsigned int ADAU1701_SERICTL_RIGHTJ_24 ;
 int EINVAL ;
 scalar_t__ SND_SOC_DAIFMT_RIGHT_J ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_set_playback_pcm_format(struct snd_soc_component *component,
         struct snd_pcm_hw_params *params)
{
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);
 unsigned int val;

 if (adau1701->dai_fmt != SND_SOC_DAIFMT_RIGHT_J)
  return 0;

 switch (params_width(params)) {
 case 16:
  val = ADAU1701_SERICTL_RIGHTJ_16;
  break;
 case 20:
  val = ADAU1701_SERICTL_RIGHTJ_20;
  break;
 case 24:
  val = ADAU1701_SERICTL_RIGHTJ_24;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(adau1701->regmap, ADAU1701_SERICTL,
  ADAU1701_SERICTL_MODE_MASK, val);

 return 0;
}
