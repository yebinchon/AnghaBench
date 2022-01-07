
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int f_flags; TYPE_2__* runtime; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int state; } ;



 int SNDRV_PCM_STATE_SETUP ;

 int snd_pcm_action_nonatomic (int *,struct snd_pcm_substream*,int) ;
 int snd_pcm_action_prepare ;
 int snd_pcm_pause (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_prepare(struct snd_pcm_substream *substream,
      struct file *file)
{
 int f_flags;

 if (file)
  f_flags = file->f_flags;
 else
  f_flags = substream->f_flags;

 snd_pcm_stream_lock_irq(substream);
 switch (substream->runtime->status->state) {
 case 129:
  snd_pcm_pause(substream, 0);

 case 128:
  snd_pcm_stop(substream, SNDRV_PCM_STATE_SETUP);
  break;
 }
 snd_pcm_stream_unlock_irq(substream);

 return snd_pcm_action_nonatomic(&snd_pcm_action_prepare,
     substream, f_flags);
}
