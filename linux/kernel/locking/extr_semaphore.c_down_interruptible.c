
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {scalar_t__ count; int lock; } ;


 int __down_interruptible (struct semaphore*) ;
 scalar_t__ likely (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int down_interruptible(struct semaphore *sem)
{
 unsigned long flags;
 int result = 0;

 raw_spin_lock_irqsave(&sem->lock, flags);
 if (likely(sem->count > 0))
  sem->count--;
 else
  result = __down_interruptible(sem);
 raw_spin_unlock_irqrestore(&sem->lock, flags);

 return result;
}
