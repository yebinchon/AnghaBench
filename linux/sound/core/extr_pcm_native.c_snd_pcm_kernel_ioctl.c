
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_delay (struct snd_pcm_substream*,int *) ;
 int snd_pcm_drain (struct snd_pcm_substream*,int *) ;
 int snd_pcm_drop (struct snd_pcm_substream*) ;
 int snd_pcm_forward (struct snd_pcm_substream*,int ) ;
 int snd_pcm_hw_params (struct snd_pcm_substream*,void*) ;
 int snd_pcm_prepare (struct snd_pcm_substream*,int *) ;
 int snd_pcm_start_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_sw_params (struct snd_pcm_substream*,void*) ;

int snd_pcm_kernel_ioctl(struct snd_pcm_substream *substream,
    unsigned int cmd, void *arg)
{
 snd_pcm_uframes_t *frames = arg;
 snd_pcm_sframes_t result;

 switch (cmd) {
 case 132:
 {

  if (substream->stream != SNDRV_PCM_STREAM_CAPTURE)
   return -EINVAL;
  result = snd_pcm_forward(substream, *frames);
  return result < 0 ? result : 0;
 }
 case 131:
  return snd_pcm_hw_params(substream, arg);
 case 128:
  return snd_pcm_sw_params(substream, arg);
 case 130:
  return snd_pcm_prepare(substream, ((void*)0));
 case 129:
  return snd_pcm_start_lock_irq(substream);
 case 134:
  return snd_pcm_drain(substream, ((void*)0));
 case 133:
  return snd_pcm_drop(substream);
 case 135:
  return snd_pcm_delay(substream, frames);
 default:
  return -EINVAL;
 }
}
