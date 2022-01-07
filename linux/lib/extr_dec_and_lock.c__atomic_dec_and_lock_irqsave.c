
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;
typedef int atomic_t ;


 scalar_t__ atomic_add_unless (int *,int,int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int _atomic_dec_and_lock_irqsave(atomic_t *atomic, spinlock_t *lock,
     unsigned long *flags)
{

 if (atomic_add_unless(atomic, -1, 1))
  return 0;


 spin_lock_irqsave(lock, *flags);
 if (atomic_dec_and_test(atomic))
  return 1;
 spin_unlock_irqrestore(lock, *flags);
 return 0;
}
