
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcxhr {TYPE_2__* card; int mgr; } ;
struct pcxhr_stream {scalar_t__ status; TYPE_3__* substream; TYPE_1__* pipe; scalar_t__ timer_is_synced; scalar_t__ timer_buf_periods; scalar_t__ timer_period_frag; scalar_t__ timer_abs_periods; } ;
struct pcxhr_rmh {int dummy; } ;
struct TYPE_6__ {int number; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int first_audio; int is_capture; } ;


 int CMD_START_STREAM ;
 int CMD_STOP_STREAM ;
 int EINVAL ;
 scalar_t__ PCXHR_STREAM_STATUS_SCHEDULE_RUN ;
 scalar_t__ PCXHR_STREAM_STATUS_SCHEDULE_STOP ;
 scalar_t__ PCXHR_STREAM_STATUS_STARTED ;
 scalar_t__ PCXHR_STREAM_STATUS_STOPPED ;
 int dev_err (int ,char*,...) ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (int ,struct pcxhr_rmh*) ;
 int pcxhr_set_pipe_cmd_params (struct pcxhr_rmh*,int ,int ,int ,int) ;
 struct snd_pcxhr* snd_pcm_substream_chip (TYPE_3__*) ;

__attribute__((used)) static int pcxhr_set_stream_state(struct snd_pcxhr *chip,
      struct pcxhr_stream *stream)
{
 int err;
 struct pcxhr_rmh rmh;
 int stream_mask, start;

 if (stream->status == PCXHR_STREAM_STATUS_SCHEDULE_RUN)
  start = 1;
 else {
  if (stream->status != PCXHR_STREAM_STATUS_SCHEDULE_STOP) {
   dev_err(chip->card->dev,
    "pcxhr_set_stream_state CANNOT be stopped\n");
   return -EINVAL;
  }
  start = 0;
 }
 if (!stream->substream)
  return -EINVAL;

 stream->timer_abs_periods = 0;
 stream->timer_period_frag = 0;
 stream->timer_buf_periods = 0;
 stream->timer_is_synced = 0;

 stream_mask =
   stream->pipe->is_capture ? 1 : 1<<stream->substream->number;

 pcxhr_init_rmh(&rmh, start ? CMD_START_STREAM : CMD_STOP_STREAM);
 pcxhr_set_pipe_cmd_params(&rmh, stream->pipe->is_capture,
      stream->pipe->first_audio, 0, stream_mask);

 chip = snd_pcm_substream_chip(stream->substream);

 err = pcxhr_send_msg(chip->mgr, &rmh);
 if (err)
  dev_err(chip->card->dev,
   "ERROR pcxhr_set_stream_state err=%x;\n", err);
 stream->status =
   start ? PCXHR_STREAM_STATUS_STARTED : PCXHR_STREAM_STATUS_STOPPED;
 return err;
}
