
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
typedef int atomic_t ;


 scalar_t__ atomic_add_unless (int *,int,int) ;
 int atomic_dec_and_test (int *) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;

int atomic_dec_and_mutex_lock(atomic_t *cnt, struct mutex *lock)
{

 if (atomic_add_unless(cnt, -1, 1))
  return 0;

 mutex_lock(lock);
 if (!atomic_dec_and_test(cnt)) {

  mutex_unlock(lock);
  return 0;
 }

 return 1;
}
