
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int min; int max; } ;
struct fsl_asoc_card_priv {int asrc_format; int asrc_rate; } ;


 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_none (struct snd_mask*) ;
 int snd_mask_set_format (struct snd_mask*,int ) ;
 struct fsl_asoc_card_priv* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
         struct snd_pcm_hw_params *params)
{
 struct fsl_asoc_card_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 struct snd_interval *rate;
 struct snd_mask *mask;

 rate = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 rate->max = rate->min = priv->asrc_rate;

 mask = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);
 snd_mask_none(mask);
 snd_mask_set_format(mask, priv->asrc_format);

 return 0;
}
