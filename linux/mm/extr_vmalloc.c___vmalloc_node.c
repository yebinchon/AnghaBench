
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;
typedef int gfp_t ;


 int VMALLOC_END ;
 int VMALLOC_START ;
 void* __vmalloc_node_range (unsigned long,unsigned long,int ,int ,int ,int ,int ,int,void const*) ;

__attribute__((used)) static void *__vmalloc_node(unsigned long size, unsigned long align,
       gfp_t gfp_mask, pgprot_t prot,
       int node, const void *caller)
{
 return __vmalloc_node_range(size, align, VMALLOC_START, VMALLOC_END,
    gfp_mask, prot, 0, node, caller);
}
