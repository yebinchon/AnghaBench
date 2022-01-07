
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rcu_is_cpu_rrupt_from_idle () ;
 int rcu_qs () ;

__attribute__((used)) static void rcu_flavor_sched_clock_irq(int user)
{
 if (user || rcu_is_cpu_rrupt_from_idle()) {
  rcu_qs();
 }
}
