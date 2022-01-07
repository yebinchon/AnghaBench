
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int * CPU_ALLOC (scalar_t__) ;
 size_t CPU_ALLOC_SIZE (scalar_t__) ;
 int CPU_ZERO_S (size_t,int *) ;
 int err (int,char*) ;
 scalar_t__ topo_max_cpus ;

size_t alloc_cpu_set(cpu_set_t **cpu_set)
{
 cpu_set_t *_cpu_set;
 size_t size;

 _cpu_set = CPU_ALLOC((topo_max_cpus + 1));
 if (_cpu_set == ((void*)0))
  err(3, "CPU_ALLOC");
 size = CPU_ALLOC_SIZE((topo_max_cpus + 1));
 CPU_ZERO_S(size, _cpu_set);

 *cpu_set = _cpu_set;
 return size;
}
