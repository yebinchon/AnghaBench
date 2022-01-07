
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via82xx {int multi_devno; int playback_devno; int capture_devno; int num_devs; int intr_mask; int pci; struct snd_pcm** pcms; TYPE_1__* card; TYPE_2__* ac97; } ;
struct snd_pcm_chmap {int dummy; } ;
struct snd_pcm {int name; struct via82xx* private_data; } ;
struct TYPE_4__ {struct snd_pcm_chmap** chmaps; } ;
struct TYPE_3__ {int shortname; } ;


 int SNDRV_DMA_TYPE_DEV_SG ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int VIA_MAX_BUFSIZE ;
 int VIA_REG_CAPTURE_8233_STATUS ;
 int VIA_REG_MULTPLAY_STATUS ;
 int ac97_can_spdif (TYPE_2__*) ;
 int init_viadev (struct via82xx*,int,int,int,int) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,size_t,int ,int,int ,struct snd_pcm_chmap**) ;
 int snd_pcm_alt_chmaps ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int ) ;
 int snd_pcm_new (TYPE_1__*,int ,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 int snd_via8233_capture_ops ;
 int snd_via8233_multi_ops ;
 int snd_via8233_playback_ops ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_via8233a_pcm_new(struct via82xx *chip)
{
 struct snd_pcm *pcm;
 struct snd_pcm_chmap *chmap;
 int err;

 chip->multi_devno = 0;
 chip->playback_devno = 1;
 chip->capture_devno = 2;
 chip->num_devs = 3;
 chip->intr_mask = 0x03033000;


 err = snd_pcm_new(chip->card, chip->card->shortname, 0, 1, 1, &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_via8233_multi_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_via8233_capture_ops);
 pcm->private_data = chip;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcms[0] = pcm;

 init_viadev(chip, chip->multi_devno, VIA_REG_MULTPLAY_STATUS, 4, 0);

 init_viadev(chip, chip->capture_devno, VIA_REG_CAPTURE_8233_STATUS, 6, 1);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           64*1024, VIA_MAX_BUFSIZE);

 err = snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK,
         snd_pcm_alt_chmaps, 6, 0,
         &chmap);
 if (err < 0)
  return err;
 chip->ac97->chmaps[SNDRV_PCM_STREAM_PLAYBACK] = chmap;


 if (! ac97_can_spdif(chip->ac97))
  return 0;


 err = snd_pcm_new(chip->card, chip->card->shortname, 1, 1, 0, &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_via8233_playback_ops);
 pcm->private_data = chip;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcms[1] = pcm;

 init_viadev(chip, chip->playback_devno, 0x30, 3, 0);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           64*1024, VIA_MAX_BUFSIZE);
 return 0;
}
