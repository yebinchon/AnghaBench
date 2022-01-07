
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int dapm_mutex; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int dapm_update_dai_unlocked (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct snd_soc_dai*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

int snd_soc_dapm_update_dai(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int ret;

 mutex_lock_nested(&rtd->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 ret = dapm_update_dai_unlocked(substream, params, dai);
 mutex_unlock(&rtd->card->dapm_mutex);

 return ret;
}
