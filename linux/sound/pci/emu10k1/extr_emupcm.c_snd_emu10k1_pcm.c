
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; int name; int dev_subclass; scalar_t__ info_flags; struct snd_emu10k1* private_data; } ;
struct snd_emu10k1 {int pci; struct snd_pcm* pcm; int card; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_DMA_TYPE_DEV_SG ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_SUBCLASS_GENERIC_MIX ;
 int snd_dma_pci_data (int ) ;
 int snd_emu10k1_capture_ops ;
 int snd_emu10k1_playback_ops ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 int strcpy (int ,char*) ;

int snd_emu10k1_pcm(struct snd_emu10k1 *emu, int device)
{
 struct snd_pcm *pcm;
 struct snd_pcm_substream *substream;
 int err;

 if ((err = snd_pcm_new(emu->card, "emu10k1", device, 32, 1, &pcm)) < 0)
  return err;

 pcm->private_data = emu;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_emu10k1_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_emu10k1_capture_ops);

 pcm->info_flags = 0;
 pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
 strcpy(pcm->name, "ADC Capture/Standard PCM Playback");
 emu->pcm = pcm;

 for (substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream; substream; substream = substream->next)
  snd_pcm_lib_preallocate_pages(substream, SNDRV_DMA_TYPE_DEV_SG,
           snd_dma_pci_data(emu->pci),
           64*1024, 64*1024);

 for (substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream; substream; substream = substream->next)
  snd_pcm_lib_preallocate_pages(substream, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(emu->pci),
           64*1024, 64*1024);

 return 0;
}
