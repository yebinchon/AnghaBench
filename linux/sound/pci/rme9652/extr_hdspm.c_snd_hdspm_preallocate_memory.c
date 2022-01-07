
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int dummy; } ;
struct hdspm {TYPE_1__* card; int pci; struct snd_pcm* pcm; } ;
struct TYPE_2__ {int dev; } ;


 size_t HDSPM_DMA_AREA_BYTES ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 int dev_dbg (int ,char*,size_t) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,size_t,size_t) ;

__attribute__((used)) static int snd_hdspm_preallocate_memory(struct hdspm *hdspm)
{
 struct snd_pcm *pcm;
 size_t wanted;

 pcm = hdspm->pcm;

 wanted = HDSPM_DMA_AREA_BYTES;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(hdspm->pci),
           wanted, wanted);
 dev_dbg(hdspm->card->dev, " Preallocated %zd Bytes\n", wanted);
 return 0;
}
