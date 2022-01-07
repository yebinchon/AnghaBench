
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 void* __vmalloc_node_flags (unsigned long,int ,int ) ;

void *vmalloc(unsigned long size)
{
 return __vmalloc_node_flags(size, NUMA_NO_NODE,
        GFP_KERNEL);
}
