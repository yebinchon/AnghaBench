
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int expedited_sequence; } ;


 int TPS (char*) ;
 unsigned long rcu_seq_snap (int *) ;
 TYPE_1__ rcu_state ;
 int smp_mb () ;
 int trace_rcu_exp_grace_period (int ,unsigned long,int ) ;

__attribute__((used)) static unsigned long rcu_exp_gp_seq_snap(void)
{
 unsigned long s;

 smp_mb();
 s = rcu_seq_snap(&rcu_state.expedited_sequence);
 trace_rcu_exp_grace_period(rcu_state.name, s, TPS("snap"));
 return s;
}
