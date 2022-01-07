
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;


 int CPU_FREE (int *) ;

void free_cpu_set(cpu_set_t *cpu_set)
{
 CPU_FREE(cpu_set);
}
