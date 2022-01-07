
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {scalar_t__ device; int pci; struct snd_pcm* spdif; int card; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct snd_trident* private_data; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_trident_spdif_7018_ops ;
 int snd_trident_spdif_ops ;
 int strcpy (int ,char*) ;

int snd_trident_spdif_pcm(struct snd_trident *trident, int device)
{
 struct snd_pcm *spdif;
 int err;

 if ((err = snd_pcm_new(trident->card, "trident_dx_nx IEC958", device, 1, 0, &spdif)) < 0)
  return err;

 spdif->private_data = trident;
 if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
  snd_pcm_set_ops(spdif, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_spdif_ops);
 } else {
  snd_pcm_set_ops(spdif, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_spdif_7018_ops);
 }
 spdif->info_flags = 0;
 strcpy(spdif->name, "Trident 4DWave IEC958");
 trident->spdif = spdif;

 snd_pcm_lib_preallocate_pages_for_all(spdif, SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(trident->pci), 64*1024, 128*1024);

 return 0;
}
