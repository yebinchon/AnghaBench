
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct snd_pcm_substream {int stream; int pcm; TYPE_3__* ops; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int info; } ;
struct TYPE_10__ {scalar_t__ actual_type; } ;
struct TYPE_9__ {scalar_t__ type_requested; } ;
struct snd_pcm_runtime {scalar_t__ tstamp_mode; int buffer_size; int period_size; int min_align; int hw_ptr_base; int hw_ptr_interrupt; unsigned long hw_ptr_jiffies; int hw_ptr_buffer_jiffies; int boundary; int rate; int delay; scalar_t__ silence_size; int hw_ptr_wrap; TYPE_2__* status; TYPE_1__ hw; scalar_t__ no_period_wakeup; TYPE_5__ audio_tstamp_report; TYPE_4__ audio_tstamp_config; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;
typedef int name ;
struct TYPE_8__ {int (* pointer ) (struct snd_pcm_substream*) ;int (* get_time_info ) (struct snd_pcm_substream*,struct timespec*,struct timespec*,TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_7__ {int hw_ptr; } ;


 int EPIPE ;
 int HZ ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT ;
 int SNDRV_PCM_INFO_BATCH ;
 int SNDRV_PCM_POS_XRUN ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ SNDRV_PCM_TSTAMP_ENABLE ;
 int XRUN_DEBUG_JIFFIESCHECK ;
 int __snd_pcm_xrun (struct snd_pcm_substream*) ;
 int hw_ptr_error (struct snd_pcm_substream*,unsigned int,char*,char*,long,long,long,long,...) ;
 unsigned long jiffies ;
 int pcm_err (int ,char*,char*,int,int,int) ;
 scalar_t__ printk_ratelimit () ;
 int snd_BUG_ON (int) ;
 int snd_pcm_debug_name (struct snd_pcm_substream*,char*,int) ;
 int snd_pcm_gettime (struct snd_pcm_runtime*,struct timespec*) ;
 int snd_pcm_playback_silence (struct snd_pcm_substream*,int) ;
 int snd_pcm_update_state (struct snd_pcm_substream*,struct snd_pcm_runtime*) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*,struct timespec*,struct timespec*,TYPE_4__*,TYPE_5__*) ;
 int trace_hwptr (struct snd_pcm_substream*,int,unsigned int) ;
 int update_audio_tstamp (struct snd_pcm_substream*,struct timespec*,struct timespec*) ;
 int xrun_debug (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_pcm_update_hw_ptr0(struct snd_pcm_substream *substream,
      unsigned int in_interrupt)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_uframes_t pos;
 snd_pcm_uframes_t old_hw_ptr, new_hw_ptr, hw_base;
 snd_pcm_sframes_t hdelta, delta;
 unsigned long jdelta;
 unsigned long curr_jiffies;
 struct timespec curr_tstamp;
 struct timespec audio_tstamp;
 int crossed_boundary = 0;

 old_hw_ptr = runtime->status->hw_ptr;







 pos = substream->ops->pointer(substream);
 curr_jiffies = jiffies;
 if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE) {
  if ((substream->ops->get_time_info) &&
   (runtime->audio_tstamp_config.type_requested != SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT)) {
   substream->ops->get_time_info(substream, &curr_tstamp,
      &audio_tstamp,
      &runtime->audio_tstamp_config,
      &runtime->audio_tstamp_report);


   if (runtime->audio_tstamp_report.actual_type == SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT)
    snd_pcm_gettime(runtime, (struct timespec *)&curr_tstamp);
  } else
   snd_pcm_gettime(runtime, (struct timespec *)&curr_tstamp);
 }

 if (pos == SNDRV_PCM_POS_XRUN) {
  __snd_pcm_xrun(substream);
  return -EPIPE;
 }
 if (pos >= runtime->buffer_size) {
  if (printk_ratelimit()) {
   char name[16];
   snd_pcm_debug_name(substream, name, sizeof(name));
   pcm_err(substream->pcm,
    "invalid position: %s, pos = %ld, buffer size = %ld, period size = %ld\n",
    name, pos, runtime->buffer_size,
    runtime->period_size);
  }
  pos = 0;
 }
 pos -= pos % runtime->min_align;
 trace_hwptr(substream, pos, in_interrupt);
 hw_base = runtime->hw_ptr_base;
 new_hw_ptr = hw_base + pos;
 if (in_interrupt) {


  delta = runtime->hw_ptr_interrupt + runtime->period_size;
  if (delta > new_hw_ptr) {

   hdelta = curr_jiffies - runtime->hw_ptr_jiffies;
   if (hdelta > runtime->hw_ptr_buffer_jiffies/2 + 1) {
    hw_base += runtime->buffer_size;
    if (hw_base >= runtime->boundary) {
     hw_base = 0;
     crossed_boundary++;
    }
    new_hw_ptr = hw_base + pos;
    goto __delta;
   }
  }
 }


 if (new_hw_ptr < old_hw_ptr) {
  hw_base += runtime->buffer_size;
  if (hw_base >= runtime->boundary) {
   hw_base = 0;
   crossed_boundary++;
  }
  new_hw_ptr = hw_base + pos;
 }
      __delta:
 delta = new_hw_ptr - old_hw_ptr;
 if (delta < 0)
  delta += runtime->boundary;

 if (runtime->no_period_wakeup) {
  snd_pcm_sframes_t xrun_threshold;




  jdelta = curr_jiffies - runtime->hw_ptr_jiffies;
  if (jdelta < runtime->hw_ptr_buffer_jiffies / 2)
   goto no_delta_check;
  hdelta = jdelta - delta * HZ / runtime->rate;
  xrun_threshold = runtime->hw_ptr_buffer_jiffies / 2 + 1;
  while (hdelta > xrun_threshold) {
   delta += runtime->buffer_size;
   hw_base += runtime->buffer_size;
   if (hw_base >= runtime->boundary) {
    hw_base = 0;
    crossed_boundary++;
   }
   new_hw_ptr = hw_base + pos;
   hdelta -= runtime->hw_ptr_buffer_jiffies;
  }
  goto no_delta_check;
 }


 if (delta >= runtime->buffer_size + runtime->period_size) {
  hw_ptr_error(substream, in_interrupt, "Unexpected hw_ptr",
        "(stream=%i, pos=%ld, new_hw_ptr=%ld, old_hw_ptr=%ld)\n",
        substream->stream, (long)pos,
        (long)new_hw_ptr, (long)old_hw_ptr);
  return 0;
 }


 if (!xrun_debug(substream, XRUN_DEBUG_JIFFIESCHECK))
  goto no_jiffies_check;





 if (runtime->hw.info & SNDRV_PCM_INFO_BATCH)
  goto no_jiffies_check;
 hdelta = delta;
 if (hdelta < runtime->delay)
  goto no_jiffies_check;
 hdelta -= runtime->delay;
 jdelta = curr_jiffies - runtime->hw_ptr_jiffies;
 if (((hdelta * HZ) / runtime->rate) > jdelta + HZ/100) {
  delta = jdelta /
   (((runtime->period_size * HZ) / runtime->rate)
        + HZ/100);

  new_hw_ptr = old_hw_ptr;
  hw_base = delta;


  while (delta > 0) {
   new_hw_ptr += runtime->period_size;
   if (new_hw_ptr >= runtime->boundary) {
    new_hw_ptr -= runtime->boundary;
    crossed_boundary--;
   }
   delta--;
  }

  hw_ptr_error(substream, in_interrupt, "hw_ptr skipping",
        "(pos=%ld, delta=%ld, period=%ld, jdelta=%lu/%lu/%lu, hw_ptr=%ld/%ld)\n",
        (long)pos, (long)hdelta,
        (long)runtime->period_size, jdelta,
        ((hdelta * HZ) / runtime->rate), hw_base,
        (unsigned long)old_hw_ptr,
        (unsigned long)new_hw_ptr);

  delta = 0;
  hw_base = new_hw_ptr - (new_hw_ptr % runtime->buffer_size);
 }
 no_jiffies_check:
 if (delta > runtime->period_size + runtime->period_size / 2) {
  hw_ptr_error(substream, in_interrupt,
        "Lost interrupts?",
        "(stream=%i, delta=%ld, new_hw_ptr=%ld, old_hw_ptr=%ld)\n",
        substream->stream, (long)delta,
        (long)new_hw_ptr,
        (long)old_hw_ptr);
 }

 no_delta_check:
 if (runtime->status->hw_ptr == new_hw_ptr) {
  update_audio_tstamp(substream, &curr_tstamp, &audio_tstamp);
  return 0;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK &&
     runtime->silence_size > 0)
  snd_pcm_playback_silence(substream, new_hw_ptr);

 if (in_interrupt) {
  delta = new_hw_ptr - runtime->hw_ptr_interrupt;
  if (delta < 0)
   delta += runtime->boundary;
  delta -= (snd_pcm_uframes_t)delta % runtime->period_size;
  runtime->hw_ptr_interrupt += delta;
  if (runtime->hw_ptr_interrupt >= runtime->boundary)
   runtime->hw_ptr_interrupt -= runtime->boundary;
 }
 runtime->hw_ptr_base = hw_base;
 runtime->status->hw_ptr = new_hw_ptr;
 runtime->hw_ptr_jiffies = curr_jiffies;
 if (crossed_boundary) {
  snd_BUG_ON(crossed_boundary != 1);
  runtime->hw_ptr_wrap += runtime->boundary;
 }

 update_audio_tstamp(substream, &curr_tstamp, &audio_tstamp);

 return snd_pcm_update_state(substream, runtime);
}
