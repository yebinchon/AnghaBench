
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 struct vm_struct* __get_vm_area_node (unsigned long,int,unsigned long,unsigned long,unsigned long,int ,int ,void const*) ;

struct vm_struct *__get_vm_area_caller(unsigned long size, unsigned long flags,
           unsigned long start, unsigned long end,
           const void *caller)
{
 return __get_vm_area_node(size, 1, flags, start, end, NUMA_NO_NODE,
      GFP_KERNEL, caller);
}
