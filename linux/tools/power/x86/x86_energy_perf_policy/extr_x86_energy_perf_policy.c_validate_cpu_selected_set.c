
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_COUNT_S (int ,int ) ;
 scalar_t__ CPU_ISSET_S (int,int ,int ) ;
 int cpu_present_set ;
 int cpu_selected_set ;
 int cpu_setsize ;
 int errx (int,char*,...) ;
 int max_cpu_num ;

void validate_cpu_selected_set(void)
{
 int cpu;

 if (CPU_COUNT_S(cpu_setsize, cpu_selected_set) == 0)
  errx(0, "no CPUs requested");

 for (cpu = 0; cpu <= max_cpu_num; ++cpu) {
  if (CPU_ISSET_S(cpu, cpu_setsize, cpu_selected_set))
   if (!CPU_ISSET_S(cpu, cpu_setsize, cpu_present_set))
    errx(1, "Requested cpu% is not present", cpu);
 }
}
