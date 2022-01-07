
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int enabled; } ;


 int STATIC_KEY_CHECK_USE (struct static_key*) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 int atomic_read (int *) ;
 int jump_label_lock () ;
 int jump_label_unlock () ;
 int jump_label_update (struct static_key*) ;
 int lockdep_assert_cpus_held () ;

void static_key_disable_cpuslocked(struct static_key *key)
{
 STATIC_KEY_CHECK_USE(key);
 lockdep_assert_cpus_held();

 if (atomic_read(&key->enabled) != 1) {
  WARN_ON_ONCE(atomic_read(&key->enabled) != 0);
  return;
 }

 jump_label_lock();
 if (atomic_cmpxchg(&key->enabled, 1, 0))
  jump_label_update(key);
 jump_label_unlock();
}
