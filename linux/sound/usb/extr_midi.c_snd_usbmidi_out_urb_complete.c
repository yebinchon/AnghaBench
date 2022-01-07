
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; struct out_urb_context* context; } ;
struct snd_usb_midi_out_endpoint {int active_urbs; int drain_urbs; TYPE_1__* umidi; int buffer_lock; int drain_wait; struct out_urb_context* urbs; } ;
struct out_urb_context {struct snd_usb_midi_out_endpoint* ep; } ;
struct TYPE_2__ {int error_timer; } ;


 int ENODEV ;
 scalar_t__ ERROR_DELAY_JIFFIES ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_usbmidi_do_output (struct snd_usb_midi_out_endpoint*) ;
 int snd_usbmidi_urb_error (struct urb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_usbmidi_out_urb_complete(struct urb *urb)
{
 struct out_urb_context *context = urb->context;
 struct snd_usb_midi_out_endpoint *ep = context->ep;
 unsigned int urb_index;
 unsigned long flags;

 spin_lock_irqsave(&ep->buffer_lock, flags);
 urb_index = context - ep->urbs;
 ep->active_urbs &= ~(1 << urb_index);
 if (unlikely(ep->drain_urbs)) {
  ep->drain_urbs &= ~(1 << urb_index);
  wake_up(&ep->drain_wait);
 }
 spin_unlock_irqrestore(&ep->buffer_lock, flags);
 if (urb->status < 0) {
  int err = snd_usbmidi_urb_error(urb);
  if (err < 0) {
   if (err != -ENODEV)
    mod_timer(&ep->umidi->error_timer,
       jiffies + ERROR_DELAY_JIFFIES);
   return;
  }
 }
 snd_usbmidi_do_output(ep);
}
