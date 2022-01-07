
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; int cpu_dai; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int SNDRV_PCM_FORMAT_S16_LE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int dev_err (int ,char*,int) ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int params_set_format (struct snd_pcm_hw_params*,int ) ;
 int snd_soc_dai_set_fmt (int ,unsigned int) ;
 int snd_soc_dai_set_tdm_slot (int ,int,int,int,int) ;

__attribute__((used)) static int cht_codec_fixup(struct snd_soc_pcm_runtime *rtd,
       struct snd_pcm_hw_params *params)
{
 struct snd_interval *rate = hw_param_interval(params,
   SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval *channels = hw_param_interval(params,
      SNDRV_PCM_HW_PARAM_CHANNELS);
 int ret = 0;
 unsigned int fmt = 0;

 ret = snd_soc_dai_set_tdm_slot(rtd->cpu_dai, 0x3, 0x3, 2, 16);
 if (ret < 0) {
  dev_err(rtd->dev, "can't set cpu_dai slot fmt: %d\n", ret);
  return ret;
 }

 fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF
    | SND_SOC_DAIFMT_CBS_CFS;

 ret = snd_soc_dai_set_fmt(rtd->cpu_dai, fmt);
 if (ret < 0) {
  dev_err(rtd->dev, "can't set cpu_dai set fmt: %d\n", ret);
  return ret;
 }


 rate->min = rate->max = 48000;
 channels->min = channels->max = 2;


 params_set_format(params, SNDRV_PCM_FORMAT_S16_LE);
 return 0;
}
