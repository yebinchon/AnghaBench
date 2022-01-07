
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 struct vm_struct* __get_vm_area_node (unsigned long,int,unsigned long,int ,int ,int ,int ,void const*) ;

struct vm_struct *get_vm_area_caller(unsigned long size, unsigned long flags,
    const void *caller)
{
 return __get_vm_area_node(size, 1, flags, VMALLOC_START, VMALLOC_END,
      NUMA_NO_NODE, GFP_KERNEL, caller);
}
