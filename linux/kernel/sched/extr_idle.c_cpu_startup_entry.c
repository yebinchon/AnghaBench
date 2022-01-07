
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int arch_cpu_idle_prepare () ;
 int cpuhp_online_idle (int) ;
 int do_idle () ;

void cpu_startup_entry(enum cpuhp_state state)
{
 arch_cpu_idle_prepare();
 cpuhp_online_idle(state);
 while (1)
  do_idle();
}
