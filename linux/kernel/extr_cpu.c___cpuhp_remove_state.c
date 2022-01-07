
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int __cpuhp_remove_state_cpuslocked (int,int) ;
 int cpus_read_lock () ;
 int cpus_read_unlock () ;

void __cpuhp_remove_state(enum cpuhp_state state, bool invoke)
{
 cpus_read_lock();
 __cpuhp_remove_state_cpuslocked(state, invoke);
 cpus_read_unlock();
}
