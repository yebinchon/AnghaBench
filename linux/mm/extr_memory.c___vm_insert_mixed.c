
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_page_prot; } ;
struct page {int dummy; } ;
typedef int pgprot_t ;
typedef int pfn_t ;


 int BUG_ON (int) ;
 int CONFIG_ARCH_HAS_PTE_SPECIAL ;
 int EBUSY ;
 int ENOMEM ;
 int IS_ENABLED (int ) ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SIGBUS ;
 int insert_page (struct vm_area_struct*,unsigned long,struct page*,int ) ;
 int insert_pfn (struct vm_area_struct*,unsigned long,int ,int ,int) ;
 int pfn_modify_allowed (int ,int ) ;
 int pfn_t_devmap (int ) ;
 int pfn_t_to_pfn (int ) ;
 scalar_t__ pfn_t_valid (int ) ;
 struct page* pfn_to_page (int ) ;
 int track_pfn_insert (struct vm_area_struct*,int *,int ) ;
 int vm_mixed_ok (struct vm_area_struct*,int ) ;

__attribute__((used)) static vm_fault_t __vm_insert_mixed(struct vm_area_struct *vma,
  unsigned long addr, pfn_t pfn, bool mkwrite)
{
 pgprot_t pgprot = vma->vm_page_prot;
 int err;

 BUG_ON(!vm_mixed_ok(vma, pfn));

 if (addr < vma->vm_start || addr >= vma->vm_end)
  return VM_FAULT_SIGBUS;

 track_pfn_insert(vma, &pgprot, pfn);

 if (!pfn_modify_allowed(pfn_t_to_pfn(pfn), pgprot))
  return VM_FAULT_SIGBUS;
 if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL) &&
     !pfn_t_devmap(pfn) && pfn_t_valid(pfn)) {
  struct page *page;






  page = pfn_to_page(pfn_t_to_pfn(pfn));
  err = insert_page(vma, addr, page, pgprot);
 } else {
  return insert_pfn(vma, addr, pfn, pgprot, mkwrite);
 }

 if (err == -ENOMEM)
  return VM_FAULT_OOM;
 if (err < 0 && err != -EBUSY)
  return VM_FAULT_SIGBUS;

 return VM_FAULT_NOPAGE;
}
