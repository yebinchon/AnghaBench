
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct sis7019* private_data; } ;
struct sis7019 {int pci; struct snd_pcm* pcm; int card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int sis_capture_ops ;
 int sis_playback_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int sis_pcm_create(struct sis7019 *sis)
{
 struct snd_pcm *pcm;
 int rc;




 rc = snd_pcm_new(sis->card, "SiS7019", 0, 64, 1, &pcm);
 if (rc)
  return rc;

 pcm->private_data = sis;
 strcpy(pcm->name, "SiS7019");
 sis->pcm = pcm;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &sis_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &sis_capture_ops);




 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
    snd_dma_pci_data(sis->pci), 64*1024, 128*1024);

 return 0;
}
