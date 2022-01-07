
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {scalar_t__ dsp_stop_is_processed; int wait; int lock; } ;


 int HZ ;
 int snd_korg1212_SendStop (struct snd_korg1212*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,scalar_t__,int) ;

__attribute__((used)) static void snd_korg1212_SendStopAndWait(struct snd_korg1212 *korg1212)
{
 unsigned long flags;
 spin_lock_irqsave(&korg1212->lock, flags);
 korg1212->dsp_stop_is_processed = 0;
 snd_korg1212_SendStop(korg1212);
 spin_unlock_irqrestore(&korg1212->lock, flags);
 wait_event_timeout(korg1212->wait, korg1212->dsp_stop_is_processed, (HZ * 3) / 2);
}
