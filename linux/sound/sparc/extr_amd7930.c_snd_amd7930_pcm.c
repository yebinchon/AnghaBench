
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; struct snd_amd7930* private_data; } ;
struct snd_amd7930 {struct snd_pcm* pcm; TYPE_1__* card; } ;
struct TYPE_2__ {int shortname; } ;


 int GFP_KERNEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_amd7930_capture_ops ;
 int snd_amd7930_playback_ops ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_amd7930_pcm(struct snd_amd7930 *amd)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(amd->card,
                               "sun_amd7930",
                               0,
                               1,
                               1, &pcm)) < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_amd7930_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_amd7930_capture_ops);

 pcm->private_data = amd;
 pcm->info_flags = 0;
 strcpy(pcm->name, amd->card->shortname);
 amd->pcm = pcm;

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
           snd_dma_continuous_data(GFP_KERNEL),
           64*1024, 64*1024);

 return 0;
}
