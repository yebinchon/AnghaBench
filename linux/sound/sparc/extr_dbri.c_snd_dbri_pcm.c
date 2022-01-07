
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; scalar_t__ info_flags; int private_data; } ;
struct snd_card {int shortname; int private_data; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dbri_ops ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (struct snd_card*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_dbri_pcm(struct snd_card *card)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(card,
                        "sun_dbri",
                           0,
                               1,
                               1, &pcm)) < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_dbri_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_dbri_ops);

 pcm->private_data = card->private_data;
 pcm->info_flags = 0;
 strcpy(pcm->name, card->shortname);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
           snd_dma_continuous_data(GFP_KERNEL),
           64 * 1024, 64 * 1024);
 return 0;
}
