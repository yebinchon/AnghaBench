
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_9__ {TYPE_3__* iso_frame_desc; int status; struct ua101* context; } ;
struct ua101_urb {TYPE_4__ urb; int ready_list; } ;
struct TYPE_10__ {int frame_bytes; TYPE_2__* substream; } ;
struct ua101 {scalar_t__ rate_feedback_count; int lock; TYPE_5__ playback; int playback_tasklet; int ready_playback_urbs; int states; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_7__ {TYPE_1__* runtime; } ;
struct TYPE_6__ {int delay; } ;


 int ECONNRESET ;
 int ENODEV ;
 int ENOENT ;
 int ESHUTDOWN ;
 int USB_PLAYBACK_RUNNING ;
 int abort_alsa_playback (struct ua101*) ;
 int abort_usb_playback (struct ua101*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void playback_urb_complete(struct urb *usb_urb)
{
 struct ua101_urb *urb = (struct ua101_urb *)usb_urb;
 struct ua101 *ua = urb->urb.context;
 unsigned long flags;

 if (unlikely(urb->urb.status == -ENOENT ||
       urb->urb.status == -ENODEV ||
       urb->urb.status == -ECONNRESET ||
       urb->urb.status == -ESHUTDOWN)) {
  abort_usb_playback(ua);
  abort_alsa_playback(ua);
  return;
 }

 if (test_bit(USB_PLAYBACK_RUNNING, &ua->states)) {

  spin_lock_irqsave(&ua->lock, flags);
  list_add_tail(&urb->ready_list, &ua->ready_playback_urbs);
  if (ua->rate_feedback_count > 0)
   tasklet_schedule(&ua->playback_tasklet);
  ua->playback.substream->runtime->delay -=
    urb->urb.iso_frame_desc[0].length /
      ua->playback.frame_bytes;
  spin_unlock_irqrestore(&ua->lock, flags);
 }
}
