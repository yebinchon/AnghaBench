
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int * page; scalar_t__ prealloc_pte; struct vm_area_struct* vma; int * pmd; } ;
struct vm_area_struct {TYPE_1__* vm_ops; int vm_mm; } ;
struct TYPE_2__ {int (* fault ) (struct vm_fault*) ;} ;


 int PageHWPoison (int *) ;
 int PageLocked (int *) ;
 int VM_BUG_ON_PAGE (int,int *) ;
 int VM_FAULT_DONE_COW ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_LOCKED ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int lock_page (int *) ;
 scalar_t__ pmd_none (int ) ;
 scalar_t__ pte_alloc_one (int ) ;
 int put_page (int *) ;
 int smp_wmb () ;
 int stub1 (struct vm_fault*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (int *) ;

__attribute__((used)) static vm_fault_t __do_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 vm_fault_t ret;
 if (pmd_none(*vmf->pmd) && !vmf->prealloc_pte) {
  vmf->prealloc_pte = pte_alloc_one(vmf->vma->vm_mm);
  if (!vmf->prealloc_pte)
   return VM_FAULT_OOM;
  smp_wmb();
 }

 ret = vma->vm_ops->fault(vmf);
 if (unlikely(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY |
       VM_FAULT_DONE_COW)))
  return ret;

 if (unlikely(PageHWPoison(vmf->page))) {
  if (ret & VM_FAULT_LOCKED)
   unlock_page(vmf->page);
  put_page(vmf->page);
  vmf->page = ((void*)0);
  return VM_FAULT_HWPOISON;
 }

 if (unlikely(!(ret & VM_FAULT_LOCKED)))
  lock_page(vmf->page);
 else
  VM_BUG_ON_PAGE(!PageLocked(vmf->page), vmf->page);

 return ret;
}
