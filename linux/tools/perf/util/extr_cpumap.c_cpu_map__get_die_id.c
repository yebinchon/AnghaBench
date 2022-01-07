
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu__get_topology_int (int,char*,int*) ;

int cpu_map__get_die_id(int cpu)
{
 int value, ret = cpu__get_topology_int(cpu, "die_id", &value);

 return ret ?: value;
}
