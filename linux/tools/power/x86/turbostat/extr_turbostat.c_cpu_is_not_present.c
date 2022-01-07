
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ISSET_S (int,int ,int ) ;
 int cpu_present_set ;
 int cpu_present_setsize ;

int cpu_is_not_present(int cpu)
{
 return !CPU_ISSET_S(cpu, cpu_present_setsize, cpu_present_set);
}
