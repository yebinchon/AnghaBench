
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int enabled; } ;


 int STATIC_KEY_CHECK_USE (struct static_key*) ;
 int atomic_cmpxchg (int *,int,int) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int atomic_set_release (int *,int) ;
 int jump_label_lock () ;
 int jump_label_unlock () ;
 int jump_label_update (struct static_key*) ;
 scalar_t__ likely (int) ;
 int lockdep_assert_cpus_held () ;

void static_key_slow_inc_cpuslocked(struct static_key *key)
{
 int v, v1;

 STATIC_KEY_CHECK_USE(key);
 lockdep_assert_cpus_held();
 for (v = atomic_read(&key->enabled); v > 0; v = v1) {
  v1 = atomic_cmpxchg(&key->enabled, v, v + 1);
  if (likely(v1 == v))
   return;
 }

 jump_label_lock();
 if (atomic_read(&key->enabled) == 0) {
  atomic_set(&key->enabled, -1);
  jump_label_update(key);




  atomic_set_release(&key->enabled, 1);
 } else {
  atomic_inc(&key->enabled);
 }
 jump_label_unlock();
}
