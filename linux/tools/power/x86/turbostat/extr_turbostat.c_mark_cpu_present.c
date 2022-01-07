
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SET_S (int,int ,int ) ;
 int cpu_present_set ;
 int cpu_present_setsize ;

int mark_cpu_present(int cpu)
{
 CPU_SET_S(cpu, cpu_present_setsize, cpu_present_set);
 return 0;
}
