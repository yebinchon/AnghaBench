
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct TYPE_2__ {scalar_t__ map_pages; } ;


 int PAGE_SHIFT ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_RETRY ;
 int __do_fault (struct vm_fault*) ;
 int do_fault_around (struct vm_fault*) ;
 int fault_around_bytes ;
 int finish_fault (struct vm_fault*) ;
 int put_page (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int ) ;

__attribute__((used)) static vm_fault_t do_read_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 vm_fault_t ret = 0;






 if (vma->vm_ops->map_pages && fault_around_bytes >> PAGE_SHIFT > 1) {
  ret = do_fault_around(vmf);
  if (ret)
   return ret;
 }

 ret = __do_fault(vmf);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
  return ret;

 ret |= finish_fault(vmf);
 unlock_page(vmf->page);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
  put_page(vmf->page);
 return ret;
}
