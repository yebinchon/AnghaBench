
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_emu10k1 {int reg_lock; } ;


 int INTE_INTERVALTIMERENB ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,int ) ;
 struct snd_emu10k1* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_timer_stop(struct snd_timer *timer)
{
 struct snd_emu10k1 *emu;
 unsigned long flags;

 emu = snd_timer_chip(timer);
 spin_lock_irqsave(&emu->reg_lock, flags);
 snd_emu10k1_intr_disable(emu, INTE_INTERVALTIMERENB);
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return 0;
}
