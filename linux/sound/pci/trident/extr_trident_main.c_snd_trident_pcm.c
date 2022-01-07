
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ entries; } ;
struct snd_trident {scalar_t__ device; int pci; TYPE_1__ tlb; struct snd_pcm* pcm; int ChanPCM; int card; } ;
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_2__* streams; int name; int dev_subclass; scalar_t__ info_flags; struct snd_trident* private_data; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_SUBCLASS_GENERIC_MIX ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,int ,int,int) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 int snd_trident_capture_ops ;
 int snd_trident_nx_playback_ops ;
 int snd_trident_playback_ops ;
 int snd_trident_si7018_capture_ops ;
 int strcpy (int ,char*) ;

int snd_trident_pcm(struct snd_trident *trident, int device)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(trident->card, "trident_dx_nx", device, trident->ChanPCM, 1, &pcm)) < 0)
  return err;

 pcm->private_data = trident;

 if (trident->tlb.entries) {
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_nx_playback_ops);
 } else {
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_trident_playback_ops);
 }
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   trident->device != TRIDENT_DEVICE_ID_SI7018 ?
   &snd_trident_capture_ops :
   &snd_trident_si7018_capture_ops);

 pcm->info_flags = 0;
 pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
 strcpy(pcm->name, "Trident 4DWave");
 trident->pcm = pcm;

 if (trident->tlb.entries) {
  struct snd_pcm_substream *substream;
  for (substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream; substream; substream = substream->next)
   snd_pcm_lib_preallocate_pages(substream, SNDRV_DMA_TYPE_DEV_SG,
            snd_dma_pci_data(trident->pci),
            64*1024, 128*1024);
  snd_pcm_lib_preallocate_pages(pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream,
           SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(trident->pci),
           64*1024, 128*1024);
 } else {
  snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
            snd_dma_pci_data(trident->pci), 64*1024, 128*1024);
 }

 return 0;
}
