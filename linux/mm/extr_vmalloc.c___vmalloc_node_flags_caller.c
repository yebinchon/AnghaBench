
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int PAGE_KERNEL ;
 void* __vmalloc_node (unsigned long,int,int ,int ,int,void*) ;

void *__vmalloc_node_flags_caller(unsigned long size, int node, gfp_t flags,
      void *caller)
{
 return __vmalloc_node(size, 1, flags, PAGE_KERNEL, node, caller);
}
