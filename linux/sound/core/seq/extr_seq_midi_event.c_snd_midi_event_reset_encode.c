
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_event {int lock; } ;


 int reset_encode (struct snd_midi_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_midi_event_reset_encode(struct snd_midi_event *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 reset_encode(dev);
 spin_unlock_irqrestore(&dev->lock, flags);
}
