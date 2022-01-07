
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {TYPE_1__* iso_frame_desc; int status; struct ua101* context; } ;
struct ua101_stream {unsigned int frame_bytes; int substream; } ;
struct TYPE_6__ {scalar_t__ queue_length; } ;
struct ua101 {unsigned int rate_feedback_start; int rate_feedback_count; unsigned int* rate_feedback; int lock; int playback_tasklet; int ready_playback_urbs; int states; int rate_feedback_wait; TYPE_3__ playback; TYPE_2__* dev; struct ua101_stream capture; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ status; unsigned int actual_length; } ;


 int ALSA_CAPTURE_RUNNING ;
 int ECONNRESET ;
 int ENODEV ;
 int ENOENT ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int USB_CAPTURE_RUNNING ;
 int USB_PLAYBACK_RUNNING ;
 int abort_alsa_capture (struct ua101*) ;
 int abort_alsa_playback (struct ua101*) ;
 int abort_usb_capture (struct ua101*) ;
 int abort_usb_playback (struct ua101*) ;
 int add_with_wraparound (struct ua101*,unsigned int*,int) ;
 int copy_capture_data (struct ua101_stream*,struct urb*,unsigned int) ;
 int dev_err (int *,char*,int,int ) ;
 int list_empty (int *) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int usb_error_string (int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void capture_urb_complete(struct urb *urb)
{
 struct ua101 *ua = urb->context;
 struct ua101_stream *stream = &ua->capture;
 unsigned long flags;
 unsigned int frames, write_ptr;
 bool do_period_elapsed;
 int err;

 if (unlikely(urb->status == -ENOENT ||
       urb->status == -ENODEV ||
       urb->status == -ECONNRESET ||
       urb->status == -ESHUTDOWN))
  goto stream_stopped;

 if (urb->status >= 0 && urb->iso_frame_desc[0].status >= 0)
  frames = urb->iso_frame_desc[0].actual_length /
   stream->frame_bytes;
 else
  frames = 0;

 spin_lock_irqsave(&ua->lock, flags);

 if (frames > 0 && test_bit(ALSA_CAPTURE_RUNNING, &ua->states))
  do_period_elapsed = copy_capture_data(stream, urb, frames);
 else
  do_period_elapsed = 0;

 if (test_bit(USB_CAPTURE_RUNNING, &ua->states)) {
  err = usb_submit_urb(urb, GFP_ATOMIC);
  if (unlikely(err < 0)) {
   spin_unlock_irqrestore(&ua->lock, flags);
   dev_err(&ua->dev->dev, "USB request error %d: %s\n",
    err, usb_error_string(err));
   goto stream_stopped;
  }


  write_ptr = ua->rate_feedback_start;
  add_with_wraparound(ua, &write_ptr, ua->rate_feedback_count);
  ua->rate_feedback[write_ptr] = frames;
  if (ua->rate_feedback_count < ua->playback.queue_length) {
   ua->rate_feedback_count++;
   if (ua->rate_feedback_count ==
      ua->playback.queue_length)
    wake_up(&ua->rate_feedback_wait);
  } else {






   add_with_wraparound(ua, &ua->rate_feedback_start, 1);
  }
  if (test_bit(USB_PLAYBACK_RUNNING, &ua->states) &&
      !list_empty(&ua->ready_playback_urbs))
   tasklet_schedule(&ua->playback_tasklet);
 }

 spin_unlock_irqrestore(&ua->lock, flags);

 if (do_period_elapsed)
  snd_pcm_period_elapsed(stream->substream);

 return;

stream_stopped:
 abort_usb_playback(ua);
 abort_usb_capture(ua);
 abort_alsa_playback(ua);
 abort_alsa_capture(ua);
}
