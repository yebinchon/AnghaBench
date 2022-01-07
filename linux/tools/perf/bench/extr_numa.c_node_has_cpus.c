
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmask {unsigned int size; } ;


 struct bitmask* numa_allocate_cpumask () ;
 scalar_t__ numa_bitmask_isbitset (struct bitmask*,unsigned int) ;
 int numa_node_to_cpus (int,struct bitmask*) ;

__attribute__((used)) static bool node_has_cpus(int node)
{
 struct bitmask *cpu = numa_allocate_cpumask();
 unsigned int i;

 if (cpu && !numa_node_to_cpus(node, cpu)) {
  for (i = 0; i < cpu->size; i++) {
   if (numa_bitmask_isbitset(cpu, i))
    return 1;
  }
 }

 return 0;
}
