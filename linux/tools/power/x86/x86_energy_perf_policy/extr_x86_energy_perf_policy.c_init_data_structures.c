
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CPU_ALLOC (scalar_t__) ;
 int CPU_ALLOC_SIZE (scalar_t__) ;
 int CPU_ZERO_S (int ,int *) ;
 int * cpu_present_set ;
 int cpu_setsize ;
 int err (int,char*) ;
 int for_all_proc_cpus (int ) ;
 int mark_cpu_present ;
 scalar_t__ max_cpu_num ;
 int set_max_cpu_pkg_num ;

void init_data_structures(void)
{
 for_all_proc_cpus(set_max_cpu_pkg_num);

 cpu_setsize = CPU_ALLOC_SIZE((max_cpu_num + 1));

 cpu_present_set = CPU_ALLOC((max_cpu_num + 1));
 if (cpu_present_set == ((void*)0))
  err(3, "CPU_ALLOC");
 CPU_ZERO_S(cpu_setsize, cpu_present_set);
 for_all_proc_cpus(mark_cpu_present);
}
