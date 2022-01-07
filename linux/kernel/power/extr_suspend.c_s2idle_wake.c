
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S2IDLE_STATE_NONE ;
 scalar_t__ S2IDLE_STATE_WAKE ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int s2idle_lock ;
 scalar_t__ s2idle_state ;
 int s2idle_wait_head ;
 int swake_up_one (int *) ;

void s2idle_wake(void)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&s2idle_lock, flags);
 if (s2idle_state > S2IDLE_STATE_NONE) {
  s2idle_state = S2IDLE_STATE_WAKE;
  swake_up_one(&s2idle_wait_head);
 }
 raw_spin_unlock_irqrestore(&s2idle_lock, flags);
}
