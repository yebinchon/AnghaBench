
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct midi_runtime {int in_lock; scalar_t__ in; } ;


 int snd_rawmidi_receive (scalar_t__,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usb6fire_midi_in_received(
  struct midi_runtime *rt, u8 *data, int length)
{
 unsigned long flags;

 spin_lock_irqsave(&rt->in_lock, flags);
 if (rt->in)
  snd_rawmidi_receive(rt->in, data, length);
 spin_unlock_irqrestore(&rt->in_lock, flags);
}
