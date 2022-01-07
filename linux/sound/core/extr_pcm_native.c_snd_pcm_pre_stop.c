
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_pcm_substream* trigger_master; TYPE_1__* status; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int EBADFD ;
 scalar_t__ SNDRV_PCM_STATE_OPEN ;

__attribute__((used)) static int snd_pcm_pre_stop(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (runtime->status->state == SNDRV_PCM_STATE_OPEN)
  return -EBADFD;
 runtime->trigger_master = substream;
 return 0;
}
