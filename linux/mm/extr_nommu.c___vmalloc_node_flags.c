
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int PAGE_KERNEL ;
 void* __vmalloc (unsigned long,int ,int ) ;

void *__vmalloc_node_flags(unsigned long size, int node, gfp_t flags)
{
 return __vmalloc(size, flags, PAGE_KERNEL);
}
