
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* cpunode_map ;
 int pr_debug (char*) ;
 scalar_t__ unlikely (int ) ;

int cpu__get_node(int cpu)
{
 if (unlikely(cpunode_map == ((void*)0))) {
  pr_debug("cpu_map not initialized\n");
  return -1;
 }

 return cpunode_map[cpu];
}
