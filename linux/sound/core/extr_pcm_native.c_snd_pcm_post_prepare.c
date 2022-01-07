
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_2__* status; TYPE_1__* control; } ;
struct TYPE_4__ {int hw_ptr; } ;
struct TYPE_3__ {int appl_ptr; } ;


 int SNDRV_PCM_STATE_PREPARED ;
 int snd_pcm_set_state (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static void snd_pcm_post_prepare(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 runtime->control->appl_ptr = runtime->status->hw_ptr;
 snd_pcm_set_state(substream, SNDRV_PCM_STATE_PREPARED);
}
