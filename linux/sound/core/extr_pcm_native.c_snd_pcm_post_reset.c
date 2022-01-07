
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ silence_size; TYPE_2__* status; TYPE_1__* control; } ;
struct TYPE_4__ {int hw_ptr; } ;
struct TYPE_3__ {int appl_ptr; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int ULONG_MAX ;
 int snd_pcm_playback_silence (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static void snd_pcm_post_reset(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 runtime->control->appl_ptr = runtime->status->hw_ptr;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK &&
     runtime->silence_size > 0)
  snd_pcm_playback_silence(substream, ULONG_MAX);
}
