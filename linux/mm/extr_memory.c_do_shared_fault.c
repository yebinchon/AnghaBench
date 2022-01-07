
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct TYPE_2__ {scalar_t__ page_mkwrite; } ;


 int VM_FAULT_ERROR ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_RETRY ;
 int __do_fault (struct vm_fault*) ;
 int do_page_mkwrite (struct vm_fault*) ;
 int fault_dirty_shared_page (struct vm_area_struct*,int ) ;
 int finish_fault (struct vm_fault*) ;
 int put_page (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int ) ;

__attribute__((used)) static vm_fault_t do_shared_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 vm_fault_t ret, tmp;

 ret = __do_fault(vmf);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
  return ret;





 if (vma->vm_ops->page_mkwrite) {
  unlock_page(vmf->page);
  tmp = do_page_mkwrite(vmf);
  if (unlikely(!tmp ||
    (tmp & (VM_FAULT_ERROR | VM_FAULT_NOPAGE)))) {
   put_page(vmf->page);
   return tmp;
  }
 }

 ret |= finish_fault(vmf);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE |
     VM_FAULT_RETRY))) {
  unlock_page(vmf->page);
  put_page(vmf->page);
  return ret;
 }

 fault_dirty_shared_page(vma, vmf->page);
 return ret;
}
