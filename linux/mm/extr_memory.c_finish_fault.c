
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_fault_t ;
struct vm_fault {int flags; int ptl; scalar_t__ pte; int memcg; TYPE_1__* vma; struct page* page; struct page* cow_page; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int vm_flags; int vm_mm; } ;


 int FAULT_FLAG_WRITE ;
 int VM_SHARED ;
 scalar_t__ alloc_set_pte (struct vm_fault*,int ,struct page*) ;
 scalar_t__ check_stable_address_space (int ) ;
 int pte_unmap_unlock (scalar_t__,int ) ;

vm_fault_t finish_fault(struct vm_fault *vmf)
{
 struct page *page;
 vm_fault_t ret = 0;


 if ((vmf->flags & FAULT_FLAG_WRITE) &&
     !(vmf->vma->vm_flags & VM_SHARED))
  page = vmf->cow_page;
 else
  page = vmf->page;





 if (!(vmf->vma->vm_flags & VM_SHARED))
  ret = check_stable_address_space(vmf->vma->vm_mm);
 if (!ret)
  ret = alloc_set_pte(vmf, vmf->memcg, page);
 if (vmf->pte)
  pte_unmap_unlock(vmf->pte, vmf->ptl);
 return ret;
}
