
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1701 {scalar_t__ dai_fmt; int regmap; } ;


 int ADAU1701_SEROCTL ;
 unsigned int ADAU1701_SEROCTL_MSB_DEALY12 ;
 unsigned int ADAU1701_SEROCTL_MSB_DEALY16 ;
 unsigned int ADAU1701_SEROCTL_MSB_DEALY8 ;
 unsigned int ADAU1701_SEROCTL_MSB_DEALY_MASK ;
 unsigned int ADAU1701_SEROCTL_WORD_LEN_16 ;
 unsigned int ADAU1701_SEROCTL_WORD_LEN_20 ;
 unsigned int ADAU1701_SEROCTL_WORD_LEN_24 ;
 unsigned int ADAU1701_SEROCTL_WORD_LEN_MASK ;
 int EINVAL ;
 scalar_t__ SND_SOC_DAIFMT_RIGHT_J ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_set_capture_pcm_format(struct snd_soc_component *component,
        struct snd_pcm_hw_params *params)
{
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);
 unsigned int mask = ADAU1701_SEROCTL_WORD_LEN_MASK;
 unsigned int val;

 switch (params_width(params)) {
 case 16:
  val = ADAU1701_SEROCTL_WORD_LEN_16;
  break;
 case 20:
  val = ADAU1701_SEROCTL_WORD_LEN_20;
  break;
 case 24:
  val = ADAU1701_SEROCTL_WORD_LEN_24;
  break;
 default:
  return -EINVAL;
 }

 if (adau1701->dai_fmt == SND_SOC_DAIFMT_RIGHT_J) {
  switch (params_width(params)) {
  case 16:
   val |= ADAU1701_SEROCTL_MSB_DEALY16;
   break;
  case 20:
   val |= ADAU1701_SEROCTL_MSB_DEALY12;
   break;
  case 24:
   val |= ADAU1701_SEROCTL_MSB_DEALY8;
   break;
  }
  mask |= ADAU1701_SEROCTL_MSB_DEALY_MASK;
 }

 regmap_update_bits(adau1701->regmap, ADAU1701_SEROCTL, mask, val);

 return 0;
}
