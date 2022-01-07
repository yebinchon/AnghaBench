
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_pgoff; TYPE_1__* vm_ops; } ;
struct page {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {struct page* (* find_special_page ) (struct vm_area_struct*,unsigned long) ;} ;


 int CONFIG_ARCH_HAS_PTE_SPECIAL ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long PAGE_SHIFT ;
 int VM_MIXEDMAP ;
 int VM_PFNMAP ;
 unsigned long highest_memmap_pfn ;
 int is_cow_mapping (int) ;
 scalar_t__ is_zero_pfn (unsigned long) ;
 scalar_t__ likely (int) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int print_bad_pte (struct vm_area_struct*,unsigned long,int ,int *) ;
 scalar_t__ pte_devmap (int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_special (int ) ;
 struct page* stub1 (struct vm_area_struct*,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct page *vm_normal_page(struct vm_area_struct *vma, unsigned long addr,
       pte_t pte)
{
 unsigned long pfn = pte_pfn(pte);

 if (IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL)) {
  if (likely(!pte_special(pte)))
   goto check_pfn;
  if (vma->vm_ops && vma->vm_ops->find_special_page)
   return vma->vm_ops->find_special_page(vma, addr);
  if (vma->vm_flags & (VM_PFNMAP | VM_MIXEDMAP))
   return ((void*)0);
  if (is_zero_pfn(pfn))
   return ((void*)0);
  if (pte_devmap(pte))
   return ((void*)0);

  print_bad_pte(vma, addr, pte, ((void*)0));
  return ((void*)0);
 }



 if (unlikely(vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP))) {
  if (vma->vm_flags & VM_MIXEDMAP) {
   if (!pfn_valid(pfn))
    return ((void*)0);
   goto out;
  } else {
   unsigned long off;
   off = (addr - vma->vm_start) >> PAGE_SHIFT;
   if (pfn == vma->vm_pgoff + off)
    return ((void*)0);
   if (!is_cow_mapping(vma->vm_flags))
    return ((void*)0);
  }
 }

 if (is_zero_pfn(pfn))
  return ((void*)0);

check_pfn:
 if (unlikely(pfn > highest_memmap_pfn)) {
  print_bad_pte(vma, addr, pte, ((void*)0));
  return ((void*)0);
 }





out:
 return pfn_to_page(pfn);
}
