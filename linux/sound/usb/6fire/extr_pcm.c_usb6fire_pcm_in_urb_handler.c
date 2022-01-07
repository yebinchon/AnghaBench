
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct urb {scalar_t__ status; struct pcm_urb* context; } ;
struct pcm_urb {int instance; TYPE_5__* packets; int * buffer; TYPE_1__* chip; struct pcm_urb* peer; } ;
struct pcm_substream {int lock; TYPE_6__* instance; int period_off; scalar_t__ active; } ;
struct pcm_runtime {int panic; scalar_t__ stream_state; int in_n_analog; int out_n_analog; struct pcm_substream playback; struct pcm_substream capture; TYPE_3__* chip; } ;
struct TYPE_12__ {TYPE_4__* runtime; } ;
struct TYPE_11__ {int offset; int length; int actual_length; scalar_t__ status; } ;
struct TYPE_10__ {int period_size; } ;
struct TYPE_9__ {TYPE_2__* dev; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {struct pcm_runtime* pcm; } ;


 int GFP_ATOMIC ;
 int PCM_N_PACKETS_PER_URB ;
 scalar_t__ STREAM_DISABLED ;
 scalar_t__ STREAM_STOPPING ;
 int dev_err (int *,char*) ;
 int memset (int *,int ,int) ;
 int snd_pcm_period_elapsed (TYPE_6__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb6fire_pcm_capture (struct pcm_substream*,struct pcm_urb*) ;
 int usb6fire_pcm_playback (struct pcm_substream*,struct pcm_urb*) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static void usb6fire_pcm_in_urb_handler(struct urb *usb_urb)
{
 struct pcm_urb *in_urb = usb_urb->context;
 struct pcm_urb *out_urb = in_urb->peer;
 struct pcm_runtime *rt = in_urb->chip->pcm;
 struct pcm_substream *sub;
 unsigned long flags;
 int total_length = 0;
 int frame_count;
 int frame;
 int channel;
 int i;
 u8 *dest;

 if (usb_urb->status || rt->panic || rt->stream_state == STREAM_STOPPING)
  return;
 for (i = 0; i < PCM_N_PACKETS_PER_URB; i++)
  if (in_urb->packets[i].status) {
   rt->panic = 1;
   return;
  }

 if (rt->stream_state == STREAM_DISABLED) {
  dev_err(&rt->chip->dev->dev,
   "internal error: stream disabled in in-urb handler.\n");
  return;
 }


 sub = &rt->capture;
 spin_lock_irqsave(&sub->lock, flags);
 if (sub->active) {
  usb6fire_pcm_capture(sub, in_urb);
  if (sub->period_off >= sub->instance->runtime->period_size) {
   sub->period_off %= sub->instance->runtime->period_size;
   spin_unlock_irqrestore(&sub->lock, flags);
   snd_pcm_period_elapsed(sub->instance);
  } else
   spin_unlock_irqrestore(&sub->lock, flags);
 } else
  spin_unlock_irqrestore(&sub->lock, flags);


 for (i = 0; i < PCM_N_PACKETS_PER_URB; i++) {
  out_urb->packets[i].offset = total_length;
  out_urb->packets[i].length = (in_urb->packets[i].actual_length
    - 4) / (rt->in_n_analog << 2)
    * (rt->out_n_analog << 2) + 4;
  out_urb->packets[i].status = 0;
  total_length += out_urb->packets[i].length;
 }
 memset(out_urb->buffer, 0, total_length);


 sub = &rt->playback;
 spin_lock_irqsave(&sub->lock, flags);
 if (sub->active) {
  usb6fire_pcm_playback(sub, out_urb);
  if (sub->period_off >= sub->instance->runtime->period_size) {
   sub->period_off %= sub->instance->runtime->period_size;
   spin_unlock_irqrestore(&sub->lock, flags);
   snd_pcm_period_elapsed(sub->instance);
  } else
   spin_unlock_irqrestore(&sub->lock, flags);
 } else
  spin_unlock_irqrestore(&sub->lock, flags);


 dest = out_urb->buffer;
 for (i = 0; i < PCM_N_PACKETS_PER_URB; i++)
  if (out_urb->packets[i].length >= 4) {
   frame_count = (out_urb->packets[i].length - 4)
     / (rt->out_n_analog << 2);
   *(dest++) = 0xaa;
   *(dest++) = 0xaa;
   *(dest++) = frame_count;
   *(dest++) = 0x00;
   for (frame = 0; frame < frame_count; frame++)
    for (channel = 0;
      channel < rt->out_n_analog;
      channel++) {
     dest += 3;
     *(dest++) = 0x40;
    }
  }
 usb_submit_urb(&out_urb->instance, GFP_ATOMIC);
 usb_submit_urb(&in_urb->instance, GFP_ATOMIC);
}
