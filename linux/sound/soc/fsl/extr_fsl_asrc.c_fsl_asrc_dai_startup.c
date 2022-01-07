
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct fsl_asrc {int channel_bits; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int fsl_asrc_rate_constraints ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int) ;
 struct fsl_asrc* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_asrc_dai_startup(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct fsl_asrc *asrc_priv = snd_soc_dai_get_drvdata(dai);


 if (asrc_priv->channel_bits == 3)
  snd_pcm_hw_constraint_step(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_CHANNELS, 2);


 return snd_pcm_hw_constraint_list(substream->runtime, 0,
   SNDRV_PCM_HW_PARAM_RATE, &fsl_asrc_rate_constraints);
}
