
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int pgoff; int * pte; int ptl; int * pmd; TYPE_2__* vma; int prealloc_pte; } ;
typedef int pgoff_t ;
struct TYPE_4__ {TYPE_1__* vm_ops; int vm_mm; scalar_t__ vm_pgoff; int vm_start; } ;
struct TYPE_3__ {int (* map_pages ) (struct vm_fault*,int,int) ;} ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int PTRS_PER_PTE ;
 unsigned long READ_ONCE (int ) ;
 int VM_FAULT_NOPAGE ;
 int fault_around_bytes ;
 unsigned long max (unsigned long,int ) ;
 int min3 (int,scalar_t__,int) ;
 scalar_t__ pmd_none (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int pte_alloc_one (int ) ;
 int pte_none (int ) ;
 int pte_unmap_unlock (int *,int ) ;
 int smp_wmb () ;
 int stub1 (struct vm_fault*,int,int) ;
 scalar_t__ vma_pages (TYPE_2__*) ;

__attribute__((used)) static vm_fault_t do_fault_around(struct vm_fault *vmf)
{
 unsigned long address = vmf->address, nr_pages, mask;
 pgoff_t start_pgoff = vmf->pgoff;
 pgoff_t end_pgoff;
 int off;
 vm_fault_t ret = 0;

 nr_pages = READ_ONCE(fault_around_bytes) >> PAGE_SHIFT;
 mask = ~(nr_pages * PAGE_SIZE - 1) & PAGE_MASK;

 vmf->address = max(address & mask, vmf->vma->vm_start);
 off = ((address - vmf->address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
 start_pgoff -= off;





 end_pgoff = start_pgoff -
  ((vmf->address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)) +
  PTRS_PER_PTE - 1;
 end_pgoff = min3(end_pgoff, vma_pages(vmf->vma) + vmf->vma->vm_pgoff - 1,
   start_pgoff + nr_pages - 1);

 if (pmd_none(*vmf->pmd)) {
  vmf->prealloc_pte = pte_alloc_one(vmf->vma->vm_mm);
  if (!vmf->prealloc_pte)
   goto out;
  smp_wmb();
 }

 vmf->vma->vm_ops->map_pages(vmf, start_pgoff, end_pgoff);


 if (pmd_trans_huge(*vmf->pmd)) {
  ret = VM_FAULT_NOPAGE;
  goto out;
 }


 if (!vmf->pte)
  goto out;


 vmf->pte -= (vmf->address >> PAGE_SHIFT) - (address >> PAGE_SHIFT);
 if (!pte_none(*vmf->pte))
  ret = VM_FAULT_NOPAGE;
 pte_unmap_unlock(vmf->pte, vmf->ptl);
out:
 vmf->address = address;
 vmf->pte = ((void*)0);
 return ret;
}
