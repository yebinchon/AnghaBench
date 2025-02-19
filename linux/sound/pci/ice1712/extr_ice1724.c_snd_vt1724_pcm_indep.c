
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; struct snd_ice1712* private_data; } ;
struct snd_ice1712 {int num_total_dacs; struct snd_pcm* pcm_ds; int pci; int card; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_vt1724_playback_indep_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_vt1724_pcm_indep(struct snd_ice1712 *ice, int device)
{
 struct snd_pcm *pcm;
 int play;
 int err;

 play = ice->num_total_dacs / 2 - 1;
 if (play <= 0)
  return 0;

 err = snd_pcm_new(ice->card, "ICE1724 Surrounds", device, play, 0, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_vt1724_playback_indep_ops);

 pcm->private_data = ice;
 pcm->info_flags = 0;
 strcpy(pcm->name, "ICE1724 Surround PCM");

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(ice->pci),
           256*1024, 256*1024);

 ice->pcm_ds = pcm;

 return 0;
}
