
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ad1889* private_data; } ;
struct snd_ad1889 {int pci; int * csubs; int * psubs; struct snd_pcm* pcm; TYPE_1__* card; } ;
struct TYPE_2__ {int shortname; int driver; } ;


 int BUFFER_BYTES_MAX ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_ad1889_capture_ops ;
 int snd_ad1889_playback_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,int ,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
snd_ad1889_pcm_init(struct snd_ad1889 *chip, int device)
{
 int err;
 struct snd_pcm *pcm;

 err = snd_pcm_new(chip->card, chip->card->driver, device, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_ad1889_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_ad1889_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 strcpy(pcm->name, chip->card->shortname);

 chip->pcm = pcm;
 chip->psubs = ((void*)0);
 chip->csubs = ((void*)0);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
      snd_dma_pci_data(chip->pci),
      BUFFER_BYTES_MAX / 2,
      BUFFER_BYTES_MAX);

 return 0;
}
