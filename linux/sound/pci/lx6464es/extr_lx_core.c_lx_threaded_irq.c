
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct lx_stream {int stream; } ;
struct lx6464es {TYPE_1__* card; struct lx_stream playback_stream; struct lx_stream capture_stream; int irqsrc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int lx_interrupt_handle_async_events (struct lx6464es*,int ,int*,scalar_t__*,scalar_t__*) ;
 int lx_interrupt_request_new_buffer (struct lx6464es*,struct lx_stream*) ;
 int snd_pcm_period_elapsed (int ) ;

irqreturn_t lx_threaded_irq(int irq, void *dev_id)
{
 struct lx6464es *chip = dev_id;
 u64 notified_in_pipe_mask = 0;
 u64 notified_out_pipe_mask = 0;
 int freq_changed;
 int err;


 err = lx_interrupt_handle_async_events(chip, chip->irqsrc,
            &freq_changed,
            &notified_in_pipe_mask,
            &notified_out_pipe_mask);
 if (err)
  dev_err(chip->card->dev, "error handling async events\n");

 if (notified_in_pipe_mask) {
  struct lx_stream *lx_stream = &chip->capture_stream;

  dev_dbg(chip->card->dev,
   "requesting audio transfer for capture\n");
  err = lx_interrupt_request_new_buffer(chip, lx_stream);
  if (err < 0)
   dev_err(chip->card->dev,
    "cannot request new buffer for capture\n");
  snd_pcm_period_elapsed(lx_stream->stream);
 }

 if (notified_out_pipe_mask) {
  struct lx_stream *lx_stream = &chip->playback_stream;

  dev_dbg(chip->card->dev,
   "requesting audio transfer for playback\n");
  err = lx_interrupt_request_new_buffer(chip, lx_stream);
  if (err < 0)
   dev_err(chip->card->dev,
    "cannot request new buffer for playback\n");
  snd_pcm_period_elapsed(lx_stream->stream);
 }

 return IRQ_HANDLED;
}
