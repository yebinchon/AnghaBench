
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct snd_hal2* private_data; } ;
struct snd_hal2 {int card; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int hal2_capture_ops ;
 int hal2_playback_ops ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int) ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int hal2_pcm_create(struct snd_hal2 *hal2)
{
 struct snd_pcm *pcm;
 int err;


 err = snd_pcm_new(hal2->card, "SGI HAL2 Audio", 0, 1, 1, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = hal2;
 strcpy(pcm->name, "SGI HAL2");


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &hal2_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &hal2_capture_ops);
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
        snd_dma_continuous_data(GFP_KERNEL),
        0, 1024 * 1024);

 return 0;
}
