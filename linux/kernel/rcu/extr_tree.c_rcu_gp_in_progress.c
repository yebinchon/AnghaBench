
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gp_seq; } ;


 int rcu_seq_current (int *) ;
 int rcu_seq_state (int ) ;
 TYPE_1__ rcu_state ;

__attribute__((used)) static int rcu_gp_in_progress(void)
{
 return rcu_seq_state(rcu_seq_current(&rcu_state.gp_seq));
}
