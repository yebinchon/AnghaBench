
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expedited_sequence; } ;


 int rcu_seq_done (int *,unsigned long) ;
 TYPE_1__ rcu_state ;

__attribute__((used)) static bool rcu_exp_gp_seq_done(unsigned long s)
{
 return rcu_seq_done(&rcu_state.expedited_sequence, s);
}
