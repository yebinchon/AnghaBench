
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int PFN_DEV ;
 int VM_FAULT_SIGBUS ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 int __pfn_to_pfn_t (unsigned long,int ) ;
 int insert_pfn (struct vm_area_struct*,unsigned long,int ,int ,int) ;
 scalar_t__ is_cow_mapping (int) ;
 int pfn_modify_allowed (unsigned long,int ) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int track_pfn_insert (struct vm_area_struct*,int *,int ) ;

vm_fault_t vmf_insert_pfn_prot(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn, pgprot_t pgprot)
{






 BUG_ON(!(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)));
 BUG_ON((vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) ==
      (VM_PFNMAP|VM_MIXEDMAP));
 BUG_ON((vma->vm_flags & VM_PFNMAP) && is_cow_mapping(vma->vm_flags));
 BUG_ON((vma->vm_flags & VM_MIXEDMAP) && pfn_valid(pfn));

 if (addr < vma->vm_start || addr >= vma->vm_end)
  return VM_FAULT_SIGBUS;

 if (!pfn_modify_allowed(pfn, pgprot))
  return VM_FAULT_SIGBUS;

 track_pfn_insert(vma, &pgprot, __pfn_to_pfn_t(pfn, PFN_DEV));

 return insert_pfn(vma, addr, __pfn_to_pfn_t(pfn, PFN_DEV), pgprot,
   0);
}
