
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int * streams; int (* private_free ) (struct snd_pcm*) ;int internal; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int kfree (struct snd_pcm*) ;
 int n_unregister ;
 int pcm_call_notify (struct snd_pcm*,int ) ;
 int snd_pcm_free_stream (int *) ;
 int snd_pcm_lib_preallocate_free_for_all (struct snd_pcm*) ;
 int stub1 (struct snd_pcm*) ;

__attribute__((used)) static int snd_pcm_free(struct snd_pcm *pcm)
{
 if (!pcm)
  return 0;
 if (!pcm->internal)
  pcm_call_notify(pcm, n_unregister);
 if (pcm->private_free)
  pcm->private_free(pcm);
 snd_pcm_lib_preallocate_free_for_all(pcm);
 snd_pcm_free_stream(&pcm->streams[SNDRV_PCM_STREAM_PLAYBACK]);
 snd_pcm_free_stream(&pcm->streams[SNDRV_PCM_STREAM_CAPTURE]);
 kfree(pcm);
 return 0;
}
