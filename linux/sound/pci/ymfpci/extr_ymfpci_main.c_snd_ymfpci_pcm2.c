
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {scalar_t__ device_id; int pci; struct snd_pcm* pcm2; int card; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ymfpci* private_data; } ;


 scalar_t__ PCI_DEVICE_ID_YAMAHA_754 ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_ymfpci_capture_ac97_ops ;
 int sprintf (int ,char*,char*) ;

int snd_ymfpci_pcm2(struct snd_ymfpci *chip, int device)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(chip->card, "YMFPCI - PCM2", device, 0, 1, &pcm)) < 0)
  return err;
 pcm->private_data = chip;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ymfpci_capture_ac97_ops);


 pcm->info_flags = 0;
 sprintf(pcm->name, "YMFPCI - %s",
  chip->device_id == PCI_DEVICE_ID_YAMAHA_754 ? "Direct Recording" : "AC'97");
 chip->pcm2 = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci), 64*1024, 256*1024);

 return 0;
}
