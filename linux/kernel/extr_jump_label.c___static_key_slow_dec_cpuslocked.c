
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct static_key {int enabled; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int jump_label_lock () ;
 int jump_label_unlock () ;
 int jump_label_update (struct static_key*) ;
 int lockdep_assert_cpus_held () ;
 scalar_t__ static_key_slow_try_dec (struct static_key*) ;

__attribute__((used)) static void __static_key_slow_dec_cpuslocked(struct static_key *key)
{
 lockdep_assert_cpus_held();

 if (static_key_slow_try_dec(key))
  return;

 jump_label_lock();
 if (atomic_dec_and_test(&key->enabled))
  jump_label_update(key);
 jump_label_unlock();
}
