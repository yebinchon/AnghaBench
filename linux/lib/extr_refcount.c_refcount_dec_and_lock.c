
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;
typedef int refcount_t ;


 int refcount_dec_and_test (int *) ;
 scalar_t__ refcount_dec_not_one (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool refcount_dec_and_lock(refcount_t *r, spinlock_t *lock)
{
 if (refcount_dec_not_one(r))
  return 0;

 spin_lock(lock);
 if (!refcount_dec_and_test(r)) {
  spin_unlock(lock);
  return 0;
 }

 return 1;
}
