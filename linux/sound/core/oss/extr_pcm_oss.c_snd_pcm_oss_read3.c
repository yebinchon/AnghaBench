
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int EPIPE ;
 int ESTRPIPE ;
 int SNDRV_PCM_IOCTL_DRAIN ;
 int SNDRV_PCM_IOCTL_DROP ;
 scalar_t__ SNDRV_PCM_STATE_DRAINING ;
 scalar_t__ SNDRV_PCM_STATE_SETUP ;
 scalar_t__ SNDRV_PCM_STATE_SUSPENDED ;
 scalar_t__ SNDRV_PCM_STATE_XRUN ;
 int __snd_pcm_lib_xfer (struct snd_pcm_substream*,void*,int,int ,int) ;
 int pcm_dbg (int ,char*,char*) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,int *) ;
 int snd_pcm_oss_capture_position_fixup (struct snd_pcm_substream*,int*) ;
 int snd_pcm_oss_prepare (struct snd_pcm_substream*) ;

snd_pcm_sframes_t snd_pcm_oss_read3(struct snd_pcm_substream *substream, char *ptr, snd_pcm_uframes_t frames, int in_kernel)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_sframes_t delay;
 int ret;
 while (1) {
  if (runtime->status->state == SNDRV_PCM_STATE_XRUN ||
      runtime->status->state == SNDRV_PCM_STATE_SUSPENDED) {






   ret = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DRAIN, ((void*)0));
   if (ret < 0)
    break;
  } else if (runtime->status->state == SNDRV_PCM_STATE_SETUP) {
   ret = snd_pcm_oss_prepare(substream);
   if (ret < 0)
    break;
  }
  ret = snd_pcm_oss_capture_position_fixup(substream, &delay);
  if (ret < 0)
   break;
  ret = __snd_pcm_lib_xfer(substream, (void *)ptr, 1,
      frames, in_kernel);
  if (ret == -EPIPE) {
   if (runtime->status->state == SNDRV_PCM_STATE_DRAINING) {
    ret = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DROP, ((void*)0));
    if (ret < 0)
     break;
   }
   continue;
  }
  if (ret != -ESTRPIPE)
   break;
 }
 return ret;
}
