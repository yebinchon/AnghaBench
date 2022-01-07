
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int transfer_buffer_length; TYPE_1__* dev; struct midi_runtime* context; } ;
struct midi_runtime {int* out_buffer; int out_lock; int * out; int out_serial; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 scalar_t__ MIDI_BUFSIZE ;
 int dev_err (int *,char*,int) ;
 int snd_rawmidi_transmit (int *,int*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usb6fire_midi_out_handler(struct urb *urb)
{
 struct midi_runtime *rt = urb->context;
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&rt->out_lock, flags);

 if (rt->out) {
  ret = snd_rawmidi_transmit(rt->out, rt->out_buffer + 4,
    MIDI_BUFSIZE - 4);
  if (ret > 0) {
   rt->out_buffer[1] = ret + 2;
   rt->out_buffer[3] = rt->out_serial++;
   urb->transfer_buffer_length = ret + 4;

   ret = usb_submit_urb(urb, GFP_ATOMIC);
   if (ret < 0)
    dev_err(&urb->dev->dev,
     "midi out urb submit failed: %d\n",
     ret);
  } else
   rt->out = ((void*)0);
 }
 spin_unlock_irqrestore(&rt->out_lock, flags);
}
