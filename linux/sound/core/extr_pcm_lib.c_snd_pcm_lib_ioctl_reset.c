
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ hw_ptr_wrap; TYPE_1__* status; int buffer_size; } ;
struct TYPE_2__ {int hw_ptr; } ;


 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irqsave (struct snd_pcm_substream*,unsigned long) ;
 int snd_pcm_stream_unlock_irqrestore (struct snd_pcm_substream*,unsigned long) ;
 scalar_t__ snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_lib_ioctl_reset(struct snd_pcm_substream *substream,
       void *arg)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long flags;
 snd_pcm_stream_lock_irqsave(substream, flags);
 if (snd_pcm_running(substream) &&
     snd_pcm_update_hw_ptr(substream) >= 0)
  runtime->status->hw_ptr %= runtime->buffer_size;
 else {
  runtime->status->hw_ptr = 0;
  runtime->hw_ptr_wrap = 0;
 }
 snd_pcm_stream_unlock_irqrestore(substream, flags);
 return 0;
}
