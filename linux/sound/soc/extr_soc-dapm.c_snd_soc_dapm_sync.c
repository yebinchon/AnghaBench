
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int dapm_mutex; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

int snd_soc_dapm_sync(struct snd_soc_dapm_context *dapm)
{
 int ret;

 mutex_lock_nested(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 ret = snd_soc_dapm_sync_unlocked(dapm);
 mutex_unlock(&dapm->card->dapm_mutex);
 return ret;
}
