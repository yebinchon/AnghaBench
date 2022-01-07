
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {int cpu_dai; TYPE_1__* card; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ BIT (int ) ;
 int FSL_SAI_CLK_MAST1 ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_DSP_A ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int dev_err (struct device*,char*,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_fmt (int ,unsigned int) ;
 int snd_soc_dai_set_sysclk (int ,int ,int ,int) ;
 int snd_soc_dai_set_tdm_slot (int ,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static int imx_audmix_fe_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct device *dev = rtd->card->dev;
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 unsigned int fmt = SND_SOC_DAIFMT_DSP_A | SND_SOC_DAIFMT_NB_NF;
 u32 channels = params_channels(params);
 int ret, dir;


 fmt |= tx ? SND_SOC_DAIFMT_CBS_CFS : SND_SOC_DAIFMT_CBM_CFM;
 dir = tx ? SND_SOC_CLOCK_OUT : SND_SOC_CLOCK_IN;


 ret = snd_soc_dai_set_fmt(rtd->cpu_dai, fmt);
 if (ret) {
  dev_err(dev, "failed to set cpu dai fmt: %d\n", ret);
  return ret;
 }

 ret = snd_soc_dai_set_sysclk(rtd->cpu_dai, FSL_SAI_CLK_MAST1, 0, dir);
 if (ret) {
  dev_err(dev, "failed to set cpu sysclk: %d\n", ret);
  return ret;
 }





 ret = snd_soc_dai_set_tdm_slot(rtd->cpu_dai, BIT(channels) - 1,
           BIT(channels) - 1, 8, 32);
 if (ret)
  dev_err(dev, "failed to set cpu dai tdm slot: %d\n", ret);

 return ret;
}
