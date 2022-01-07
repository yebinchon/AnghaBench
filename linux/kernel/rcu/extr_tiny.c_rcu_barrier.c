
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_rcu ;
 int wait_rcu_gp (int ) ;

void rcu_barrier(void)
{
 wait_rcu_gp(call_rcu);
}
