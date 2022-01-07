
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gp_seq; } ;


 unsigned long rcu_seq_snap (int *) ;
 TYPE_1__ rcu_state ;
 int smp_mb () ;

unsigned long get_state_synchronize_rcu(void)
{




 smp_mb();
 return rcu_seq_snap(&rcu_state.gp_seq);
}
