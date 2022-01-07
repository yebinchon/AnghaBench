
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ capture; scalar_t__ playback; } ;
struct snd_sof_pcm {int list; TYPE_2__* stream; TYPE_1__ pcm; } ;
struct snd_soc_dobj {struct snd_sof_pcm* private; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int page_table; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int kfree (struct snd_sof_pcm*) ;
 int list_del (int *) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int sof_dai_unload(struct snd_soc_component *scomp,
     struct snd_soc_dobj *dobj)
{
 struct snd_sof_pcm *spcm = dobj->private;


 if (spcm->pcm.playback)
  snd_dma_free_pages(&spcm->stream[SNDRV_PCM_STREAM_PLAYBACK].page_table);

 if (spcm->pcm.capture)
  snd_dma_free_pages(&spcm->stream[SNDRV_PCM_STREAM_CAPTURE].page_table);


 list_del(&spcm->list);
 kfree(spcm);

 return 0;
}
