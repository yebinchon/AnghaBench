
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_pcm {int name; scalar_t__ info_flags; struct snd_card_asihpi* private_data; } ;
struct snd_card_asihpi {int pci; int card; TYPE_2__* hpi; } ;
struct TYPE_4__ {TYPE_1__* adapter; } ;
struct TYPE_3__ {int index; } ;


 int BUFFER_BYTES_MAX ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int hpi_adapter_get_info (int ,int *,int *,int *,int *,int *) ;
 int snd_card_asihpi_capture_mmap_ops ;
 int snd_card_asihpi_playback_mmap_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int ) ;
 int snd_pcm_new (int ,char*,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_card_asihpi_pcm_new(struct snd_card_asihpi *asihpi, int device)
{
 struct snd_pcm *pcm;
 int err;
 u16 num_instreams, num_outstreams, x16;
 u32 x32;

 err = hpi_adapter_get_info(asihpi->hpi->adapter->index,
   &num_outstreams, &num_instreams,
   &x16, &x32, &x16);

 err = snd_pcm_new(asihpi->card, "Asihpi PCM", device,
   num_outstreams, num_instreams, &pcm);
 if (err < 0)
  return err;


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_card_asihpi_playback_mmap_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_card_asihpi_capture_mmap_ops);

 pcm->private_data = asihpi;
 pcm->info_flags = 0;
 strcpy(pcm->name, "Asihpi PCM");



 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
      snd_dma_pci_data(asihpi->pci),
      64*1024, BUFFER_BYTES_MAX);

 return 0;
}
