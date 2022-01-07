
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int gfp_t ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 unsigned long VM_ALLOC ;
 unsigned long VM_UNINITIALIZED ;
 struct vm_struct* __get_vm_area_node (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int,int ,void const*) ;
 void* __vmalloc_area_node (struct vm_struct*,int ,int ,int) ;
 int clear_vm_uninitialized_flag (struct vm_struct*) ;
 int kmemleak_vmalloc (struct vm_struct*,unsigned long,int ) ;
 unsigned long totalram_pages () ;
 int warn_alloc (int ,int *,char*,unsigned long) ;

void *__vmalloc_node_range(unsigned long size, unsigned long align,
   unsigned long start, unsigned long end, gfp_t gfp_mask,
   pgprot_t prot, unsigned long vm_flags, int node,
   const void *caller)
{
 struct vm_struct *area;
 void *addr;
 unsigned long real_size = size;

 size = PAGE_ALIGN(size);
 if (!size || (size >> PAGE_SHIFT) > totalram_pages())
  goto fail;

 area = __get_vm_area_node(size, align, VM_ALLOC | VM_UNINITIALIZED |
    vm_flags, start, end, node, gfp_mask, caller);
 if (!area)
  goto fail;

 addr = __vmalloc_area_node(area, gfp_mask, prot, node);
 if (!addr)
  return ((void*)0);






 clear_vm_uninitialized_flag(area);

 kmemleak_vmalloc(area, size, gfp_mask);

 return addr;

fail:
 warn_alloc(gfp_mask, ((void*)0),
     "vmalloc: allocation failure: %lu bytes", real_size);
 return ((void*)0);
}
