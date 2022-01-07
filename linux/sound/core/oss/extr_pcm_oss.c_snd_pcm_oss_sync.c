
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {unsigned int f_flags; struct snd_pcm_runtime* runtime; int pcm; int mmap_count; } ;
struct TYPE_4__ {scalar_t__ buffer_used; int period_bytes; int buffer; scalar_t__ period_ptr; int prepare; int params_lock; int rw_ref; int format; } ;
struct snd_pcm_runtime {size_t period_size; scalar_t__ access; TYPE_2__ oss; TYPE_1__* control; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
typedef int snd_pcm_format_t ;
struct TYPE_3__ {size_t appl_ptr; } ;


 int ERESTARTSYS ;
 unsigned int O_NONBLOCK ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ;
 int SNDRV_PCM_IOCTL_DRAIN ;
 int SNDRV_PCM_IOCTL_DROP ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pcm_dbg (int ,char*) ;
 unsigned long snd_pcm_format_physical_width (int ) ;
 int snd_pcm_format_set_silence (int ,int,size_t) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,int *) ;
 int snd_pcm_lib_write (struct snd_pcm_substream*,int *,size_t) ;
 int snd_pcm_lib_writev (struct snd_pcm_substream*,int *,size_t) ;
 int snd_pcm_oss_format_from (int ) ;
 int snd_pcm_oss_make_ready (struct snd_pcm_substream*) ;
 int snd_pcm_oss_sync1 (struct snd_pcm_substream*,size_t) ;

__attribute__((used)) static int snd_pcm_oss_sync(struct snd_pcm_oss_file *pcm_oss_file)
{
 int err = 0;
 unsigned int saved_f_flags;
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 snd_pcm_format_t format;
 unsigned long width;
 size_t size;

 substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 if (substream != ((void*)0)) {
  runtime = substream->runtime;
  if (atomic_read(&substream->mmap_count))
   goto __direct;
  if ((err = snd_pcm_oss_make_ready(substream)) < 0)
   return err;
  atomic_inc(&runtime->oss.rw_ref);
  if (mutex_lock_interruptible(&runtime->oss.params_lock)) {
   atomic_dec(&runtime->oss.rw_ref);
   return -ERESTARTSYS;
  }
  format = snd_pcm_oss_format_from(runtime->oss.format);
  width = snd_pcm_format_physical_width(format);
  if (runtime->oss.buffer_used > 0) {



   size = (8 * (runtime->oss.period_bytes - runtime->oss.buffer_used) + 7) / width;
   snd_pcm_format_set_silence(format,
         runtime->oss.buffer + runtime->oss.buffer_used,
         size);
   err = snd_pcm_oss_sync1(substream, runtime->oss.period_bytes);
   if (err < 0)
    goto unlock;
  } else if (runtime->oss.period_ptr > 0) {



   size = runtime->oss.period_bytes - runtime->oss.period_ptr;
   snd_pcm_format_set_silence(format,
         runtime->oss.buffer,
         size * 8 / width);
   err = snd_pcm_oss_sync1(substream, size);
   if (err < 0)
    goto unlock;
  }




  size = runtime->control->appl_ptr % runtime->period_size;
  if (size > 0) {
   size = runtime->period_size - size;
   if (runtime->access == SNDRV_PCM_ACCESS_RW_INTERLEAVED)
    snd_pcm_lib_write(substream, ((void*)0), size);
   else if (runtime->access == SNDRV_PCM_ACCESS_RW_NONINTERLEAVED)
    snd_pcm_lib_writev(substream, ((void*)0), size);
  }
unlock:
  mutex_unlock(&runtime->oss.params_lock);
  atomic_dec(&runtime->oss.rw_ref);
  if (err < 0)
   return err;



       __direct:
  saved_f_flags = substream->f_flags;
  substream->f_flags &= ~O_NONBLOCK;
  err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DRAIN, ((void*)0));
  substream->f_flags = saved_f_flags;
  if (err < 0)
   return err;
  mutex_lock(&runtime->oss.params_lock);
  runtime->oss.prepare = 1;
  mutex_unlock(&runtime->oss.params_lock);
 }

 substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_CAPTURE];
 if (substream != ((void*)0)) {
  if ((err = snd_pcm_oss_make_ready(substream)) < 0)
   return err;
  runtime = substream->runtime;
  err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DROP, ((void*)0));
  if (err < 0)
   return err;
  mutex_lock(&runtime->oss.params_lock);
  runtime->oss.buffer_used = 0;
  runtime->oss.prepare = 1;
  mutex_unlock(&runtime->oss.params_lock);
 }
 return 0;
}
