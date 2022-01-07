
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbmidi_out_port {struct snd_usb_midi_out_endpoint* ep; } ;
struct snd_usb_midi_out_endpoint {unsigned int active_urbs; unsigned int drain_urbs; int buffer_lock; int drain_wait; TYPE_2__* umidi; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ disconnected; } ;
struct TYPE_3__ {struct usbmidi_out_port* private_data; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 long msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 long schedule_timeout (long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static void snd_usbmidi_output_drain(struct snd_rawmidi_substream *substream)
{
 struct usbmidi_out_port *port = substream->runtime->private_data;
 struct snd_usb_midi_out_endpoint *ep = port->ep;
 unsigned int drain_urbs;
 DEFINE_WAIT(wait);
 long timeout = msecs_to_jiffies(50);

 if (ep->umidi->disconnected)
  return;




 spin_lock_irq(&ep->buffer_lock);
 drain_urbs = ep->active_urbs;
 if (drain_urbs) {
  ep->drain_urbs |= drain_urbs;
  do {
   prepare_to_wait(&ep->drain_wait, &wait,
     TASK_UNINTERRUPTIBLE);
   spin_unlock_irq(&ep->buffer_lock);
   timeout = schedule_timeout(timeout);
   spin_lock_irq(&ep->buffer_lock);
   drain_urbs &= ep->drain_urbs;
  } while (drain_urbs && timeout);
  finish_wait(&ep->drain_wait, &wait);
 }
 spin_unlock_irq(&ep->buffer_lock);
}
