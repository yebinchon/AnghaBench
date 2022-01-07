
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {int state; } ;


 int EBADFD ;


 int __snd_pcm_xrun (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_xrun(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int result;

 snd_pcm_stream_lock_irq(substream);
 switch (runtime->status->state) {
 case 128:
  result = 0;
  break;
 case 129:
  __snd_pcm_xrun(substream);
  result = 0;
  break;
 default:
  result = -EBADFD;
 }
 snd_pcm_stream_unlock_irq(substream);
 return result;
}
