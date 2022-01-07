
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_queue_entry_t ;
struct TYPE_3__ {scalar_t__ irq_ok; int irq_lock; int interrupt_sleeper; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int add_wait_queue (int *,int *) ;
 int barrier () ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int jiffies ;
 int outb (int,int) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_before (int ,unsigned long) ;

__attribute__((used)) static void
wavefront_should_cause_interrupt (snd_wavefront_t *dev,
      int val, int port, unsigned long timeout)

{
 wait_queue_entry_t wait;

 init_waitqueue_entry(&wait, current);
 spin_lock_irq(&dev->irq_lock);
 add_wait_queue(&dev->interrupt_sleeper, &wait);
 dev->irq_ok = 0;
 outb (val,port);
 spin_unlock_irq(&dev->irq_lock);
 while (!dev->irq_ok && time_before(jiffies, timeout)) {
  schedule_timeout_uninterruptible(1);
  barrier();
 }
}
