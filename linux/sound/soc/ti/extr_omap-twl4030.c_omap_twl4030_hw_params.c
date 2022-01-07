
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_DSP_A ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_IB_NF ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int snd_soc_runtime_set_dai_fmt (struct snd_soc_pcm_runtime*,unsigned int) ;

__attribute__((used)) static int omap_twl4030_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 unsigned int fmt;

 switch (params_channels(params)) {
 case 2:
  fmt = SND_SOC_DAIFMT_I2S |
   SND_SOC_DAIFMT_NB_NF |
   SND_SOC_DAIFMT_CBM_CFM;
  break;
 case 4:
  fmt = SND_SOC_DAIFMT_DSP_A |
   SND_SOC_DAIFMT_IB_NF |
   SND_SOC_DAIFMT_CBM_CFM;
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_runtime_set_dai_fmt(rtd, fmt);
}
