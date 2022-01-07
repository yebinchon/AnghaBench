
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; struct fm801* private_data; } ;
struct pci_dev {int dummy; } ;
struct fm801 {scalar_t__ multichannel; struct snd_pcm* pcm; int card; int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (struct pci_dev*) ;
 int snd_fm801_capture_ops ;
 int snd_fm801_playback_ops ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,int ,int ,int,int ,int *) ;
 int snd_pcm_alt_chmaps ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int snd_fm801_pcm(struct fm801 *chip, int device)
{
 struct pci_dev *pdev = to_pci_dev(chip->dev);
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(chip->card, "FM801", device, 1, 1, &pcm)) < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_fm801_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_fm801_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 strcpy(pcm->name, "FM801");
 chip->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(pdev),
           chip->multichannel ? 128*1024 : 64*1024, 128*1024);

 return snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK,
         snd_pcm_alt_chmaps,
         chip->multichannel ? 6 : 2, 0,
         ((void*)0));
}
