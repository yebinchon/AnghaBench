
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
typedef int refcount_t ;


 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int refcount_dec_and_test (int *) ;
 scalar_t__ refcount_dec_not_one (int *) ;

bool refcount_dec_and_mutex_lock(refcount_t *r, struct mutex *lock)
{
 if (refcount_dec_not_one(r))
  return 0;

 mutex_lock(lock);
 if (!refcount_dec_and_test(r)) {
  mutex_unlock(lock);
  return 0;
 }

 return 1;
}
