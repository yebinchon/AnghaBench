
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int prepare; int params_lock; scalar_t__ period_ptr; scalar_t__ prev_hw_ptr_period; scalar_t__ buffer_used; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int SNDRV_PCM_IOCTL_DROP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,int *) ;

__attribute__((used)) static int snd_pcm_oss_reset(struct snd_pcm_oss_file *pcm_oss_file)
{
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 int i;

 for (i = 0; i < 2; i++) {
  substream = pcm_oss_file->streams[i];
  if (!substream)
   continue;
  runtime = substream->runtime;
  snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DROP, ((void*)0));
  mutex_lock(&runtime->oss.params_lock);
  runtime->oss.prepare = 1;
  runtime->oss.buffer_used = 0;
  runtime->oss.prev_hw_ptr_period = 0;
  runtime->oss.period_ptr = 0;
  mutex_unlock(&runtime->oss.params_lock);
 }
 return 0;
}
