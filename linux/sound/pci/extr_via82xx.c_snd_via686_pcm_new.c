
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via82xx {int capture_devno; int num_devs; int intr_mask; int pci; struct snd_pcm** pcms; TYPE_1__* card; scalar_t__ playback_devno; } ;
struct snd_pcm {int name; struct via82xx* private_data; } ;
struct TYPE_2__ {int shortname; } ;


 int SNDRV_DMA_TYPE_DEV_SG ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int VIA_MAX_BUFSIZE ;
 int VIA_REG_CAPTURE_STATUS ;
 int VIA_REG_PLAYBACK_STATUS ;
 int init_viadev (struct via82xx*,int,int ,int ,int) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int ) ;
 int snd_pcm_new (TYPE_1__*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_via686_capture_ops ;
 int snd_via686_playback_ops ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_via686_pcm_new(struct via82xx *chip)
{
 struct snd_pcm *pcm;
 int err;

 chip->playback_devno = 0;
 chip->capture_devno = 1;
 chip->num_devs = 2;
 chip->intr_mask = 0x77;

 err = snd_pcm_new(chip->card, chip->card->shortname, 0, 1, 1, &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_via686_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_via686_capture_ops);
 pcm->private_data = chip;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcms[0] = pcm;
 init_viadev(chip, 0, VIA_REG_PLAYBACK_STATUS, 0, 0);
 init_viadev(chip, 1, VIA_REG_CAPTURE_STATUS, 0, 1);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           64*1024, VIA_MAX_BUFSIZE);
 return 0;
}
