
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int timer; scalar_t__ timer_running; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int fasync; } ;


 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int snd_pcm_running (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irqsave (struct snd_pcm_substream*,unsigned long) ;
 int snd_pcm_stream_unlock_irqrestore (struct snd_pcm_substream*,unsigned long) ;
 scalar_t__ snd_pcm_update_hw_ptr0 (struct snd_pcm_substream*,int) ;
 int snd_timer_interrupt (int ,int) ;

void snd_pcm_period_elapsed(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 unsigned long flags;

 if (PCM_RUNTIME_CHECK(substream))
  return;
 runtime = substream->runtime;

 snd_pcm_stream_lock_irqsave(substream, flags);
 if (!snd_pcm_running(substream) ||
     snd_pcm_update_hw_ptr0(substream, 1) < 0)
  goto _end;





 _end:
 kill_fasync(&runtime->fasync, SIGIO, POLL_IN);
 snd_pcm_stream_unlock_irqrestore(substream, flags);
}
