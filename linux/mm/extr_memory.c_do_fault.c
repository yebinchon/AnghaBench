
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int flags; int * prealloc_pte; int ptl; int * pte; int address; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; TYPE_1__* vm_ops; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int fault; } ;


 int FAULT_FLAG_WRITE ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_SIGBUS ;
 int VM_SHARED ;
 int do_cow_fault (struct vm_fault*) ;
 int do_read_fault (struct vm_fault*) ;
 int do_shared_fault (struct vm_fault*) ;
 int pmd_present (int ) ;
 int pte_free (struct mm_struct*,int *) ;
 int pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,int ,int *) ;
 int pte_unmap_unlock (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static vm_fault_t do_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct mm_struct *vm_mm = vma->vm_mm;
 vm_fault_t ret;




 if (!vma->vm_ops->fault) {




  if (unlikely(!pmd_present(*vmf->pmd)))
   ret = VM_FAULT_SIGBUS;
  else {
   vmf->pte = pte_offset_map_lock(vmf->vma->vm_mm,
             vmf->pmd,
             vmf->address,
             &vmf->ptl);







   if (unlikely(pte_none(*vmf->pte)))
    ret = VM_FAULT_SIGBUS;
   else
    ret = VM_FAULT_NOPAGE;

   pte_unmap_unlock(vmf->pte, vmf->ptl);
  }
 } else if (!(vmf->flags & FAULT_FLAG_WRITE))
  ret = do_read_fault(vmf);
 else if (!(vma->vm_flags & VM_SHARED))
  ret = do_cow_fault(vmf);
 else
  ret = do_shared_fault(vmf);


 if (vmf->prealloc_pte) {
  pte_free(vm_mm, vmf->prealloc_pte);
  vmf->prealloc_pte = ((void*)0);
 }
 return ret;
}
