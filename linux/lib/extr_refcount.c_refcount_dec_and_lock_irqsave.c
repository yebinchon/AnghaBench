
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;
typedef int refcount_t ;


 int refcount_dec_and_test (int *) ;
 scalar_t__ refcount_dec_not_one (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool refcount_dec_and_lock_irqsave(refcount_t *r, spinlock_t *lock,
       unsigned long *flags)
{
 if (refcount_dec_not_one(r))
  return 0;

 spin_lock_irqsave(lock, *flags);
 if (!refcount_dec_and_test(r)) {
  spin_unlock_irqrestore(lock, *flags);
  return 0;
 }

 return 1;
}
