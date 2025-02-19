
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct aaci* private_data; } ;
struct aaci {TYPE_1__* card; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int dev; } ;


 int DRIVER_NAME ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int aaci_capture_ops ;
 int aaci_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int) ;
 int snd_pcm_new (TYPE_1__*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int aaci_init_pcm(struct aaci *aaci)
{
 struct snd_pcm *pcm;
 int ret;

 ret = snd_pcm_new(aaci->card, "AACI AC'97", 0, 1, 1, &pcm);
 if (ret == 0) {
  aaci->pcm = pcm;
  pcm->private_data = aaci;
  pcm->info_flags = 0;

  strlcpy(pcm->name, DRIVER_NAME, sizeof(pcm->name));

  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &aaci_playback_ops);
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &aaci_capture_ops);
  snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
            aaci->card->dev,
            0, 64 * 1024);
 }

 return ret;
}
