
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int lock; int count; int wait_list; } ;


 int __up (struct semaphore*) ;
 scalar_t__ likely (int ) ;
 int list_empty (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void up(struct semaphore *sem)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&sem->lock, flags);
 if (likely(list_empty(&sem->wait_list)))
  sem->count++;
 else
  __up(sem);
 raw_spin_unlock_irqrestore(&sem->lock, flags);
}
