
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long expedited_sequence; } ;


 TYPE_1__ rcu_state ;

unsigned long rcu_exp_batches_completed(void)
{
 return rcu_state.expedited_sequence;
}
