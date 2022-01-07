
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int numa_bitmask_isbitset (int ,int) ;
 int numa_nodes_ptr ;

__attribute__((used)) static int is_node_present(int node)
{
 return numa_bitmask_isbitset(numa_nodes_ptr, node);
}
