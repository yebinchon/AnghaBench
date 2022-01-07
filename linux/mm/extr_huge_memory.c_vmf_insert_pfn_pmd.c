
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; int vm_mm; int vm_page_prot; } ;
typedef int * pgtable_t ;
typedef int pgprot_t ;
typedef int pfn_t ;


 int BUG_ON (int) ;
 unsigned long PMD_MASK ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 scalar_t__ arch_needs_pgtable_deposit () ;
 int insert_pfn_pmd (struct vm_area_struct*,unsigned long,int ,int ,int ,int,int *) ;
 scalar_t__ is_cow_mapping (int) ;
 int pfn_t_devmap (int ) ;
 int * pte_alloc_one (int ) ;
 int track_pfn_insert (struct vm_area_struct*,int *,int ) ;

vm_fault_t vmf_insert_pfn_pmd(struct vm_fault *vmf, pfn_t pfn, bool write)
{
 unsigned long addr = vmf->address & PMD_MASK;
 struct vm_area_struct *vma = vmf->vma;
 pgprot_t pgprot = vma->vm_page_prot;
 pgtable_t pgtable = ((void*)0);






 BUG_ON(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
   !pfn_t_devmap(pfn));
 BUG_ON((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
      (VM_PFNMAP|VM_MIXEDMAP));
 BUG_ON((vma->vm_flags & VM_PFNMAP) && is_cow_mapping(vma->vm_flags));

 if (addr < vma->vm_start || addr >= vma->vm_end)
  return VM_FAULT_SIGBUS;

 if (arch_needs_pgtable_deposit()) {
  pgtable = pte_alloc_one(vma->vm_mm);
  if (!pgtable)
   return VM_FAULT_OOM;
 }

 track_pfn_insert(vma, &pgprot, pfn);

 insert_pfn_pmd(vma, addr, vmf->pmd, pfn, pgprot, write, pgtable);
 return VM_FAULT_NOPAGE;
}
