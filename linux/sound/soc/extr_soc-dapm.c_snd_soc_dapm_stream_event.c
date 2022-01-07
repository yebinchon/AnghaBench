
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dapm_mutex; } ;


 int SND_SOC_DAPM_CLASS_RUNTIME ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int soc_dapm_stream_event (struct snd_soc_pcm_runtime*,int,int) ;

void snd_soc_dapm_stream_event(struct snd_soc_pcm_runtime *rtd, int stream,
         int event)
{
 struct snd_soc_card *card = rtd->card;

 mutex_lock_nested(&card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
 soc_dapm_stream_event(rtd, stream, event);
 mutex_unlock(&card->dapm_mutex);
}
