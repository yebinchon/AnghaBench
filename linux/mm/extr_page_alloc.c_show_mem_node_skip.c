
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;


 unsigned int SHOW_MEM_FILTER_NODES ;
 int cpuset_current_mems_allowed ;
 int node_isset (int,int ) ;

__attribute__((used)) static bool show_mem_node_skip(unsigned int flags, int nid, nodemask_t *nodemask)
{
 if (!(flags & SHOW_MEM_FILTER_NODES))
  return 0;






 if (!nodemask)
  nodemask = &cpuset_current_mems_allowed;

 return !node_isset(nid, *nodemask);
}
