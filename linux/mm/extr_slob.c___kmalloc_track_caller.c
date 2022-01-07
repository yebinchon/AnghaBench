
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int NUMA_NO_NODE ;
 void* __do_kmalloc_node (size_t,int ,int ,unsigned long) ;

void *__kmalloc_track_caller(size_t size, gfp_t gfp, unsigned long caller)
{
 return __do_kmalloc_node(size, gfp, NUMA_NO_NODE, caller);
}
