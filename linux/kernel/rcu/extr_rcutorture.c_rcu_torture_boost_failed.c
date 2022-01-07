
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int VERBOSE_TOROUT_STRING (char*) ;
 int n_rcu_torture_boost_failure ;
 int test_boost_duration ;

__attribute__((used)) static bool rcu_torture_boost_failed(unsigned long start, unsigned long end)
{
 if (end - start > test_boost_duration * HZ - HZ / 2) {
  VERBOSE_TOROUT_STRING("rcu_torture_boost boosting failed");
  n_rcu_torture_boost_failure++;

  return 1;
 }

 return 0;
}
