
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long gp_start; unsigned long jiffies_resched; int n_force_qs; int n_force_qs_gpstart; int jiffies_stall; } ;


 int READ_ONCE (int ) ;
 unsigned long jiffies ;
 unsigned long rcu_jiffies_till_stall_check () ;
 TYPE_1__ rcu_state ;
 int smp_store_release (int *,unsigned long) ;

__attribute__((used)) static void record_gp_stall_check_time(void)
{
 unsigned long j = jiffies;
 unsigned long j1;

 rcu_state.gp_start = j;
 j1 = rcu_jiffies_till_stall_check();

 smp_store_release(&rcu_state.jiffies_stall, j + j1);
 rcu_state.jiffies_resched = j + j1 / 2;
 rcu_state.n_force_qs_gpstart = READ_ONCE(rcu_state.n_force_qs);
}
