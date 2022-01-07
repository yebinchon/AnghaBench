
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_lib_preallocate_free_for_all (struct snd_pcm*) ;

__attribute__((used)) static void stm32_adfsdm_pcm_free(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;

 substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
 if (substream)
  snd_pcm_lib_preallocate_free_for_all(pcm);
}
