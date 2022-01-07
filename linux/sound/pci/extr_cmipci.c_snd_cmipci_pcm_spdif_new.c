
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct cmipci* private_data; } ;
struct cmipci {int max_channels; int pci; struct snd_pcm* pcm_spdif; TYPE_1__* card; } ;
struct TYPE_2__ {int driver; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_cmipci_capture_spdif_ops ;
 int snd_cmipci_playback_spdif_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,int ,int ,int ,int ,int *) ;
 int snd_pcm_alt_chmaps ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,int ,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cmipci_pcm_spdif_new(struct cmipci *cm, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(cm->card, cm->card->driver, device, 1, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_cmipci_playback_spdif_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_cmipci_capture_spdif_ops);

 pcm->private_data = cm;
 pcm->info_flags = 0;
 strcpy(pcm->name, "C-Media PCI IEC958");
 cm->pcm_spdif = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(cm->pci), 64*1024, 128*1024);

 err = snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK,
         snd_pcm_alt_chmaps, cm->max_channels, 0,
         ((void*)0));
 if (err < 0)
  return err;

 return 0;
}
