
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {TYPE_2__* dev; scalar_t__ transfer_buffer_length; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct midi_runtime {int out_lock; struct snd_rawmidi_substream* out; int out_serial; scalar_t__* out_buffer; struct urb out_urb; } ;
typedef scalar_t__ __s8 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct midi_runtime* private_data; } ;


 int GFP_ATOMIC ;
 scalar_t__ MIDI_BUFSIZE ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ snd_rawmidi_transmit (struct snd_rawmidi_substream*,scalar_t__*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void usb6fire_midi_out_trigger(
  struct snd_rawmidi_substream *alsa_sub, int up)
{
 struct midi_runtime *rt = alsa_sub->rmidi->private_data;
 struct urb *urb = &rt->out_urb;
 __s8 ret;
 unsigned long flags;

 spin_lock_irqsave(&rt->out_lock, flags);
 if (up) {
  if (rt->out) {
   spin_unlock_irqrestore(&rt->out_lock, flags);
   return;
  }

  ret = snd_rawmidi_transmit(alsa_sub, rt->out_buffer + 4,
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
   else
    rt->out = alsa_sub;
  }
 } else if (rt->out == alsa_sub)
  rt->out = ((void*)0);
 spin_unlock_irqrestore(&rt->out_lock, flags);
}
