
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; TYPE_1__* card; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int SND_SOC_DAIFMT_CBM_CFM ;
 unsigned int SND_SOC_DAIFMT_DSP_A ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;
 int dev_err (struct device*,char*,int) ;
 int snd_soc_dai_set_fmt (int ,unsigned int) ;

__attribute__((used)) static int imx_audmix_be_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct device *dev = rtd->card->dev;
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 unsigned int fmt = SND_SOC_DAIFMT_DSP_A | SND_SOC_DAIFMT_NB_NF;
 int ret;

 if (!tx)
  return 0;


 fmt |= SND_SOC_DAIFMT_CBM_CFM;


 ret = snd_soc_dai_set_fmt(rtd->cpu_dai, fmt);
 if (ret)
  dev_err(dev, "failed to set AUDMIX DAI fmt: %d\n", ret);

 return ret;
}
