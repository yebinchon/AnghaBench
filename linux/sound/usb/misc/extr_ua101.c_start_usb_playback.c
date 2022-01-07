
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct urb {TYPE_2__* iso_frame_desc; int transfer_buffer; int complete; } ;
struct TYPE_7__ {unsigned int queue_length; unsigned int frame_bytes; TYPE_1__** urbs; } ;
struct ua101 {unsigned int rate_feedback_count; unsigned int* rate_feedback; size_t rate_feedback_start; TYPE_3__ playback; int states; int lock; int rate_feedback_wait; int ready_playback_urbs; int playback_tasklet; } ;
struct TYPE_6__ {unsigned int length; } ;
struct TYPE_5__ {struct urb urb; } ;


 int DISCONNECTED ;
 int EIO ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int INTF_PLAYBACK ;
 int PLAYBACK_URB_COMPLETED ;
 int USB_CAPTURE_RUNNING ;
 int USB_PLAYBACK_RUNNING ;
 int add_with_wraparound (struct ua101*,size_t*,int) ;
 int clear_bit (int ,int *) ;
 int enable_iso_interface (struct ua101*,int ) ;
 int first_playback_urb_complete ;
 int kill_stream_urbs (TYPE_3__*) ;
 int memset (int ,int ,unsigned int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stop_usb_playback (struct ua101*) ;
 int submit_stream_urbs (struct ua101*,TYPE_3__*) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int start_usb_playback(struct ua101 *ua)
{
 unsigned int i, frames;
 struct urb *urb;
 int err = 0;

 if (test_bit(DISCONNECTED, &ua->states))
  return -ENODEV;

 if (test_bit(USB_PLAYBACK_RUNNING, &ua->states))
  return 0;

 kill_stream_urbs(&ua->playback);
 tasklet_kill(&ua->playback_tasklet);

 err = enable_iso_interface(ua, INTF_PLAYBACK);
 if (err < 0)
  return err;

 clear_bit(PLAYBACK_URB_COMPLETED, &ua->states);
 ua->playback.urbs[0]->urb.complete =
  first_playback_urb_complete;
 spin_lock_irq(&ua->lock);
 INIT_LIST_HEAD(&ua->ready_playback_urbs);
 spin_unlock_irq(&ua->lock);





 wait_event(ua->rate_feedback_wait,
     ua->rate_feedback_count >= ua->playback.queue_length ||
     !test_bit(USB_CAPTURE_RUNNING, &ua->states) ||
     test_bit(DISCONNECTED, &ua->states));
 if (test_bit(DISCONNECTED, &ua->states)) {
  stop_usb_playback(ua);
  return -ENODEV;
 }
 if (!test_bit(USB_CAPTURE_RUNNING, &ua->states)) {
  stop_usb_playback(ua);
  return -EIO;
 }

 for (i = 0; i < ua->playback.queue_length; ++i) {

  spin_lock_irq(&ua->lock);
  frames = ua->rate_feedback[ua->rate_feedback_start];
  add_with_wraparound(ua, &ua->rate_feedback_start, 1);
  ua->rate_feedback_count--;
  spin_unlock_irq(&ua->lock);
  urb = &ua->playback.urbs[i]->urb;
  urb->iso_frame_desc[0].length =
   frames * ua->playback.frame_bytes;
  memset(urb->transfer_buffer, 0,
         urb->iso_frame_desc[0].length);
 }

 set_bit(USB_PLAYBACK_RUNNING, &ua->states);
 err = submit_stream_urbs(ua, &ua->playback);
 if (err < 0)
  stop_usb_playback(ua);
 return err;
}
