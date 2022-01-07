
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ period_size; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
typedef scalar_t__ snd_pcm_sframes_t ;


 int SNDRV_PCM_IOCTL_DELAY ;
 int SNDRV_PCM_IOCTL_FORWARD ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,scalar_t__*) ;

__attribute__((used)) static int snd_pcm_oss_capture_position_fixup(struct snd_pcm_substream *substream, snd_pcm_sframes_t *delay)
{
 struct snd_pcm_runtime *runtime;
 snd_pcm_uframes_t frames;
 int err = 0;

 while (1) {
  err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DELAY, delay);
  if (err < 0)
   break;
  runtime = substream->runtime;
  if (*delay <= (snd_pcm_sframes_t)runtime->buffer_size)
   break;


  frames = (*delay - runtime->buffer_size) + runtime->period_size - 1;
  frames /= runtime->period_size;
  frames *= runtime->period_size;
  err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_FORWARD, &frames);
  if (err < 0)
   break;
 }
 return err;
}
