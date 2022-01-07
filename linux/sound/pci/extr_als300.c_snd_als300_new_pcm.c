
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct snd_als300* private_data; } ;
struct snd_als300 {int pci; struct snd_pcm* pcm; int card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_als300_capture_ops ;
 int snd_als300_playback_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_als300_new_pcm(struct snd_als300 *chip)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, "ALS300", 0, 1, 1, &pcm);
 if (err < 0)
  return err;
 pcm->private_data = chip;
 strcpy(pcm->name, "ALS300");
 chip->pcm = pcm;


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
    &snd_als300_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
    &snd_als300_capture_ops);


 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
 snd_dma_pci_data(chip->pci), 64*1024, 64*1024);
 return 0;
}
