
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int pci; struct snd_pcm* pcm; int card; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct sonicvibes* private_data; } ;


 int EINVAL ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_sonicvibes_capture_ops ;
 int snd_sonicvibes_playback_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_sonicvibes_pcm(struct sonicvibes *sonic, int device)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(sonic->card, "s3_86c617", device, 1, 1, &pcm)) < 0)
  return err;
 if (snd_BUG_ON(!pcm))
  return -EINVAL;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sonicvibes_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_sonicvibes_capture_ops);

 pcm->private_data = sonic;
 pcm->info_flags = 0;
 strcpy(pcm->name, "S3 SonicVibes");
 sonic->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(sonic->pci), 64*1024, 128*1024);

 return 0;
}
