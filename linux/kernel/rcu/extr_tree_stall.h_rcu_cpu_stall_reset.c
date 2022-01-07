
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jiffies_stall; } ;


 int ULONG_MAX ;
 int WRITE_ONCE (int ,scalar_t__) ;
 scalar_t__ jiffies ;
 TYPE_1__ rcu_state ;

void rcu_cpu_stall_reset(void)
{
 WRITE_ONCE(rcu_state.jiffies_stall, jiffies + ULONG_MAX / 2);
}
