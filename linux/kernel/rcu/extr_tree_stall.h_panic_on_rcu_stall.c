
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 scalar_t__ sysctl_panic_on_rcu_stall ;

__attribute__((used)) static void panic_on_rcu_stall(void)
{
 if (sysctl_panic_on_rcu_stall)
  panic("RCU Stall\n");
}
