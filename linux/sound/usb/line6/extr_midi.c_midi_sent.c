
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_line6 {TYPE_1__* line6midi; } ;
struct urb {int status; int transfer_buffer; scalar_t__ context; } ;
struct TYPE_2__ {int num_active_send_urbs; int lock; int send_wait; int substream_transmit; } ;


 int ESHUTDOWN ;
 int kfree (int ) ;
 int line6_midi_transmit (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_free_urb (struct urb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void midi_sent(struct urb *urb)
{
 unsigned long flags;
 int status;
 int num;
 struct usb_line6 *line6 = (struct usb_line6 *)urb->context;

 status = urb->status;
 kfree(urb->transfer_buffer);
 usb_free_urb(urb);

 if (status == -ESHUTDOWN)
  return;

 spin_lock_irqsave(&line6->line6midi->lock, flags);
 num = --line6->line6midi->num_active_send_urbs;

 if (num == 0) {
  line6_midi_transmit(line6->line6midi->substream_transmit);
  num = line6->line6midi->num_active_send_urbs;
 }

 if (num == 0)
  wake_up(&line6->line6midi->send_wait);

 spin_unlock_irqrestore(&line6->line6midi->lock, flags);
}
