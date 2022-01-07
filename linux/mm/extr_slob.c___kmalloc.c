
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int NUMA_NO_NODE ;
 int _RET_IP_ ;
 void* __do_kmalloc_node (size_t,int ,int ,int ) ;

void *__kmalloc(size_t size, gfp_t gfp)
{
 return __do_kmalloc_node(size, gfp, NUMA_NO_NODE, _RET_IP_);
}
