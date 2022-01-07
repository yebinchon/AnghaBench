
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; int mmap_count; } ;
struct TYPE_3__ {int trigger; int prepare; int params_lock; } ;
struct snd_pcm_runtime {int start_threshold; int boundary; TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct TYPE_4__ {int pcm; } ;


 int ERESTARTSYS ;
 int PCM_ENABLE_INPUT ;
 int PCM_ENABLE_OUTPUT ;
 int SNDRV_PCM_IOCTL_DROP ;
 int SNDRV_PCM_IOCTL_START ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ atomic_read (int *) ;
 int get_hw_ptr_period (struct snd_pcm_runtime*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pcm_dbg (int ,char*,int) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int,int *) ;
 int snd_pcm_oss_make_ready (struct snd_pcm_substream*) ;
 int snd_pcm_oss_simulate_fill (struct snd_pcm_substream*,int ) ;
 TYPE_2__* substream ;

__attribute__((used)) static int snd_pcm_oss_set_trigger(struct snd_pcm_oss_file *pcm_oss_file, int trigger)
{
 struct snd_pcm_runtime *runtime;
 struct snd_pcm_substream *psubstream = ((void*)0), *csubstream = ((void*)0);
 int err, cmd;





 psubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 csubstream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];

 if (psubstream) {
  if ((err = snd_pcm_oss_make_ready(psubstream)) < 0)
   return err;
 }
 if (csubstream) {
  if ((err = snd_pcm_oss_make_ready(csubstream)) < 0)
   return err;
 }
       if (psubstream) {
        runtime = psubstream->runtime;
  cmd = 0;
  if (mutex_lock_interruptible(&runtime->oss.params_lock))
   return -ERESTARTSYS;
  if (trigger & PCM_ENABLE_OUTPUT) {
   if (runtime->oss.trigger)
    goto _skip1;
   if (atomic_read(&psubstream->mmap_count))
    snd_pcm_oss_simulate_fill(psubstream,
      get_hw_ptr_period(runtime));
   runtime->oss.trigger = 1;
   runtime->start_threshold = 1;
   cmd = SNDRV_PCM_IOCTL_START;
  } else {
   if (!runtime->oss.trigger)
    goto _skip1;
   runtime->oss.trigger = 0;
   runtime->start_threshold = runtime->boundary;
   cmd = SNDRV_PCM_IOCTL_DROP;
   runtime->oss.prepare = 1;
  }
 _skip1:
  mutex_unlock(&runtime->oss.params_lock);
  if (cmd) {
   err = snd_pcm_kernel_ioctl(psubstream, cmd, ((void*)0));
   if (err < 0)
    return err;
  }
 }
 if (csubstream) {
        runtime = csubstream->runtime;
  cmd = 0;
  if (mutex_lock_interruptible(&runtime->oss.params_lock))
   return -ERESTARTSYS;
  if (trigger & PCM_ENABLE_INPUT) {
   if (runtime->oss.trigger)
    goto _skip2;
   runtime->oss.trigger = 1;
   runtime->start_threshold = 1;
   cmd = SNDRV_PCM_IOCTL_START;
  } else {
   if (!runtime->oss.trigger)
    goto _skip2;
   runtime->oss.trigger = 0;
   runtime->start_threshold = runtime->boundary;
   cmd = SNDRV_PCM_IOCTL_DROP;
   runtime->oss.prepare = 1;
  }
 _skip2:
  mutex_unlock(&runtime->oss.params_lock);
  if (cmd) {
   err = snd_pcm_kernel_ioctl(csubstream, cmd, ((void*)0));
   if (err < 0)
    return err;
  }
 }
 return 0;
}
