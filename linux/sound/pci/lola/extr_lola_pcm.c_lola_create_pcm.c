
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {struct lola* private_data; int name; } ;
struct lola {int pci; TYPE_1__* pcm; int card; } ;
struct TYPE_2__ {scalar_t__ num_streams; int bdl; } ;


 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int lola_pcm_ops ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int ,scalar_t__,scalar_t__,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int,int *) ;
 int strlcpy (int ,char*,int) ;

int lola_create_pcm(struct lola *chip)
{
 struct snd_pcm *pcm;
 int i, err;

 for (i = 0; i < 2; i++) {
  err = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
       snd_dma_pci_data(chip->pci),
       PAGE_SIZE, &chip->pcm[i].bdl);
  if (err < 0)
   return err;
 }

 err = snd_pcm_new(chip->card, "Digigram Lola", 0,
     chip->pcm[SNDRV_PCM_STREAM_PLAYBACK].num_streams,
     chip->pcm[SNDRV_PCM_STREAM_CAPTURE].num_streams,
     &pcm);
 if (err < 0)
  return err;
 strlcpy(pcm->name, "Digigram Lola", sizeof(pcm->name));
 pcm->private_data = chip;
 for (i = 0; i < 2; i++) {
  if (chip->pcm[i].num_streams)
   snd_pcm_set_ops(pcm, i, &lola_pcm_ops);
 }

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           1024 * 64, 32 * 1024 * 1024);
 return 0;
}
