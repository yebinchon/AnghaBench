
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gp_seq; } ;


 unsigned long READ_ONCE (int ) ;
 TYPE_1__ rcu_state ;

unsigned long rcu_get_gp_seq(void)
{
 return READ_ONCE(rcu_state.gp_seq);
}
