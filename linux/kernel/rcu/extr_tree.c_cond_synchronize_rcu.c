
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gp_seq; } ;


 int rcu_seq_done (int *,unsigned long) ;
 TYPE_1__ rcu_state ;
 int smp_mb () ;
 int synchronize_rcu () ;

void cond_synchronize_rcu(unsigned long oldstate)
{
 if (!rcu_seq_done(&rcu_state.gp_seq, oldstate))
  synchronize_rcu();
 else
  smp_mb();
}
