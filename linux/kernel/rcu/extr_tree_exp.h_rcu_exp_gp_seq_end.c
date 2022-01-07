
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expedited_sequence; } ;


 int rcu_seq_end (int *) ;
 TYPE_1__ rcu_state ;
 int smp_mb () ;

__attribute__((used)) static void rcu_exp_gp_seq_end(void)
{
 rcu_seq_end(&rcu_state.expedited_sequence);
 smp_mb();
}
