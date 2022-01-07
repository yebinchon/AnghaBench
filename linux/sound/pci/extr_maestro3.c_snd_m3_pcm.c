
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_m3* private_data; } ;
struct snd_m3 {int pci; struct snd_pcm* pcm; TYPE_1__* card; } ;
struct TYPE_2__ {int driver; } ;


 int MAX_CAPTURES ;
 int MAX_PLAYBACKS ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (int ) ;
 int snd_m3_capture_ops ;
 int snd_m3_playback_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,int ,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
snd_m3_pcm(struct snd_m3 * chip, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, chip->card->driver, device,
     MAX_PLAYBACKS, MAX_CAPTURES, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_m3_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_m3_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 strcpy(pcm->name, chip->card->driver);
 chip->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci), 64*1024, 64*1024);

 return 0;
}
