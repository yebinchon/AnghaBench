
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; struct atiixp_modem* private_data; int dev_class; } ;
struct atiixp_modem {int pci; struct snd_pcm** pcmdevs; int card; TYPE_1__* dmas; } ;
struct TYPE_2__ {int * ops; } ;


 size_t ATI_DMA_CAPTURE ;
 size_t ATI_DMA_PLAYBACK ;
 size_t ATI_PCMDEV_ANALOG ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_CLASS_MODEM ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_atiixp_capture_dma_ops ;
 int snd_atiixp_capture_ops ;
 int snd_atiixp_playback_dma_ops ;
 int snd_atiixp_playback_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,size_t,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_atiixp_pcm_new(struct atiixp_modem *chip)
{
 struct snd_pcm *pcm;
 int err;


 chip->dmas[ATI_DMA_PLAYBACK].ops = &snd_atiixp_playback_dma_ops;
 chip->dmas[ATI_DMA_CAPTURE].ops = &snd_atiixp_capture_dma_ops;


 err = snd_pcm_new(chip->card, "ATI IXP MC97", ATI_PCMDEV_ANALOG, 1, 1, &pcm);
 if (err < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_atiixp_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_atiixp_capture_ops);
 pcm->dev_class = SNDRV_PCM_CLASS_MODEM;
 pcm->private_data = chip;
 strcpy(pcm->name, "ATI IXP MC97");
 chip->pcmdevs[ATI_PCMDEV_ANALOG] = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           64*1024, 128*1024);

 return 0;
}
