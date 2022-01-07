
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct snd_bt87x* private_data; } ;
struct snd_bt87x {int pci; int card; } ;


 int ALIGN (int,int) ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_bt87x_pcm_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int ) ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_bt87x_pcm(struct snd_bt87x *chip, int device, char *name)
{
 int err;
 struct snd_pcm *pcm;

 err = snd_pcm_new(chip->card, name, device, 0, 1, &pcm);
 if (err < 0)
  return err;
 pcm->private_data = chip;
 strcpy(pcm->name, name);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_bt87x_pcm_ops);
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(chip->pci),
           128 * 1024,
           ALIGN(255 * 4092, 1024));
 return 0;
}
