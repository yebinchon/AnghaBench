
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct snd_pcm_runtime {int period_size; scalar_t__ periods; } ;
struct pcxhr_stream {scalar_t__ status; int timer_is_synced; int timer_abs_periods; int timer_period_frag; scalar_t__ timer_buf_periods; TYPE_2__* substream; } ;
struct pcxhr_mgr {int granularity; int lock; TYPE_1__* pci; } ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ PCXHR_STREAM_STATUS_RUNNING ;
 int dev_err (int *,char*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcxhr_stream_read_position (struct pcxhr_mgr*,struct pcxhr_stream*) ;
 int snd_pcm_period_elapsed (TYPE_2__*) ;

__attribute__((used)) static void pcxhr_update_timer_pos(struct pcxhr_mgr *mgr,
       struct pcxhr_stream *stream,
       int samples_to_add)
{
 if (stream->substream &&
     (stream->status == PCXHR_STREAM_STATUS_RUNNING)) {
  u_int64_t new_sample_count;
  int elapsed = 0;
  int hardware_read = 0;
  struct snd_pcm_runtime *runtime = stream->substream->runtime;

  if (samples_to_add < 0) {
   stream->timer_is_synced = 0;

   samples_to_add = mgr->granularity;
  }

  if (!stream->timer_is_synced) {
   if ((stream->timer_abs_periods != 0) ||
       ((stream->timer_period_frag + samples_to_add) >=
       runtime->period_size)) {
    new_sample_count =
      pcxhr_stream_read_position(mgr, stream);
    hardware_read = 1;
    if (new_sample_count >= mgr->granularity) {




     new_sample_count -= mgr->granularity;
     stream->timer_is_synced = 1;
    }
   }
  }
  if (!hardware_read) {



   new_sample_count = stream->timer_abs_periods +
    stream->timer_period_frag + samples_to_add;
  }
  while (1) {
   u_int64_t new_elapse_pos = stream->timer_abs_periods +
    runtime->period_size;
   if (new_elapse_pos > new_sample_count)
    break;
   elapsed = 1;
   stream->timer_buf_periods++;
   if (stream->timer_buf_periods >= runtime->periods)
    stream->timer_buf_periods = 0;
   stream->timer_abs_periods = new_elapse_pos;
  }
  if (new_sample_count >= stream->timer_abs_periods) {
   stream->timer_period_frag =
    (u_int32_t)(new_sample_count -
         stream->timer_abs_periods);
  } else {
   dev_err(&mgr->pci->dev,
       "ERROR new_sample_count too small ??? %ld\n",
       (long unsigned int)new_sample_count);
  }

  if (elapsed) {
   mutex_unlock(&mgr->lock);
   snd_pcm_period_elapsed(stream->substream);
   mutex_lock(&mgr->lock);
  }
 }
}
