
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ml403_ac97cr* private_data; } ;
struct snd_ml403_ac97cr {struct snd_pcm* pcm; int card; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_continuous_data (int ) ;
 int snd_ml403_ac97cr_capture_ops ;
 int snd_ml403_ac97cr_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
snd_ml403_ac97cr_pcm(struct snd_ml403_ac97cr *ml403_ac97cr, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(ml403_ac97cr->card, "ML403AC97CR/1", device, 1, 1,
     &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_ml403_ac97cr_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_ml403_ac97cr_capture_ops);
 pcm->private_data = ml403_ac97cr;
 pcm->info_flags = 0;
 strcpy(pcm->name, "ML403AC97CR DAC/ADC");
 ml403_ac97cr->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
       snd_dma_continuous_data(GFP_KERNEL),
       64 * 1024,
       128 * 1024);
 return 0;
}
