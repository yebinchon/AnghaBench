
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int count; int lock; } ;


 scalar_t__ likely (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int down_trylock(struct semaphore *sem)
{
 unsigned long flags;
 int count;

 raw_spin_lock_irqsave(&sem->lock, flags);
 count = sem->count - 1;
 if (likely(count >= 0))
  sem->count = count;
 raw_spin_unlock_irqrestore(&sem->lock, flags);

 return (count < 0);
}
