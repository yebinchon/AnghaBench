
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {struct snd_pcm* pcm; int pci; int card; } ;
struct snd_pcm {int info_flags; struct snd_sb* private_data; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_als4000_capture_ops ;
 int snd_als4000_playback_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;

__attribute__((used)) static int snd_als4000_pcm(struct snd_sb *chip, int device)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, "ALS4000 DSP", device, 1, 1, &pcm);
 if (err < 0)
  return err;
 pcm->private_data = chip;
 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_als4000_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_als4000_capture_ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
           64*1024, 64*1024);

 chip->pcm = pcm;

 return 0;
}
