
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct snd_ice1712 {TYPE_1__* card; int pci; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_warn (int ,char*) ;
 int snd_dma_pci_data (int ) ;
 int snd_ice1712_capture_ops ;
 int snd_ice1712_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_ice1712_pcm(struct snd_ice1712 *ice, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(ice->card, "ICE1712 consumer", device, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ice1712_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ice1712_capture_ops);

 pcm->private_data = ice;
 pcm->info_flags = 0;
 strcpy(pcm->name, "ICE1712 consumer");
 ice->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(ice->pci), 64*1024, 64*1024);

 dev_warn(ice->card->dev,
   "Consumer PCM code does not work well at the moment --jk\n");

 return 0;
}
