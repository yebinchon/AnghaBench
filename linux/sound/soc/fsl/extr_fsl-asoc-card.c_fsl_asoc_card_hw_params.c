
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; TYPE_2__* card; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_3__ {scalar_t__ set_bias_level; } ;
struct cpu_priv {scalar_t__ slot_width; int * sysclk_dir; int * sysclk_freq; int * sysclk_id; } ;
struct fsl_asoc_card_priv {int dai_fmt; TYPE_1__ card; int sample_format; int sample_rate; struct cpu_priv cpu_priv; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;


 int ENOTSUPP ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_SOC_DAIFMT_CBM_CFM ;
 int dev_err (struct device*,char*) ;
 scalar_t__ fsl_asoc_card_is_ac97 (struct fsl_asoc_card_priv*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct fsl_asoc_card_priv* snd_soc_card_get_drvdata (TYPE_2__*) ;
 int snd_soc_dai_set_sysclk (int ,int ,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (int ,int,int,int,scalar_t__) ;

__attribute__((used)) static int fsl_asoc_card_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct fsl_asoc_card_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
 struct cpu_priv *cpu_priv = &priv->cpu_priv;
 struct device *dev = rtd->card->dev;
 int ret;

 priv->sample_rate = params_rate(params);
 priv->sample_format = params_format(params);






 if ((priv->card.set_bias_level &&
      priv->dai_fmt & SND_SOC_DAIFMT_CBM_CFM) ||
     fsl_asoc_card_is_ac97(priv))
  return 0;


 ret = snd_soc_dai_set_sysclk(rtd->cpu_dai, cpu_priv->sysclk_id[tx],
         cpu_priv->sysclk_freq[tx],
         cpu_priv->sysclk_dir[tx]);
 if (ret && ret != -ENOTSUPP) {
  dev_err(dev, "failed to set sysclk for cpu dai\n");
  return ret;
 }

 if (cpu_priv->slot_width) {
  ret = snd_soc_dai_set_tdm_slot(rtd->cpu_dai, 0x3, 0x3, 2,
            cpu_priv->slot_width);
  if (ret && ret != -ENOTSUPP) {
   dev_err(dev, "failed to set TDM slot for cpu dai\n");
   return ret;
  }
 }

 return 0;
}
