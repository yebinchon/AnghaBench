
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __leak_check () ;
 int contract_checks () ;
 int extend_checks () ;
 int leak_check () ;
 int nr_allocated ;
 int printv (int,char*,int ) ;
 int rcu_barrier () ;
 int simple_checks () ;
 int single_check () ;
 int thrash_tags () ;

void tag_check(void)
{
 single_check();
 extend_checks();
 contract_checks();
 rcu_barrier();
 printv(2, "after extend_checks: %d allocated\n", nr_allocated);
 __leak_check();
 leak_check();
 rcu_barrier();
 printv(2, "after leak_check: %d allocated\n", nr_allocated);
 simple_checks();
 rcu_barrier();
 printv(2, "after simple_checks: %d allocated\n", nr_allocated);
 thrash_tags();
 rcu_barrier();
 printv(2, "after thrash_tags: %d allocated\n", nr_allocated);
}
