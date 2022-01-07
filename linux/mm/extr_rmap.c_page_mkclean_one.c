
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; int vm_end; } ;
struct page_vma_mapped_walk {unsigned long address; int * pmd; int * pte; int flags; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 int MMU_NOTIFY_PROTECTION_PAGE ;
 int PVMW_SYNC ;
 int WARN_ON_ONCE (int) ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int min (int ,scalar_t__) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,int ) ;
 scalar_t__ page_size (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int pmd_dirty (int ) ;
 int pmd_mkclean (int ) ;
 int pmd_write (int ) ;
 int pmd_wrprotect (int ) ;
 int pmdp_invalidate (struct vm_area_struct*,unsigned long,int *) ;
 int pte_dirty (int ) ;
 int pte_mkclean (int ) ;
 int pte_pfn (int ) ;
 int pte_write (int ) ;
 int pte_wrprotect (int ) ;
 int ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 int set_pmd_at (int ,unsigned long,int *,int ) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

__attribute__((used)) static bool page_mkclean_one(struct page *page, struct vm_area_struct *vma,
       unsigned long address, void *arg)
{
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
  .address = address,
  .flags = PVMW_SYNC,
 };
 struct mmu_notifier_range range;
 int *cleaned = arg;





 mmu_notifier_range_init(&range, MMU_NOTIFY_PROTECTION_PAGE,
    0, vma, vma->vm_mm, address,
    min(vma->vm_end, address + page_size(page)));
 mmu_notifier_invalidate_range_start(&range);

 while (page_vma_mapped_walk(&pvmw)) {
  int ret = 0;

  address = pvmw.address;
  if (pvmw.pte) {
   pte_t entry;
   pte_t *pte = pvmw.pte;

   if (!pte_dirty(*pte) && !pte_write(*pte))
    continue;

   flush_cache_page(vma, address, pte_pfn(*pte));
   entry = ptep_clear_flush(vma, address, pte);
   entry = pte_wrprotect(entry);
   entry = pte_mkclean(entry);
   set_pte_at(vma->vm_mm, address, pte, entry);
   ret = 1;
  } else {
   WARN_ON_ONCE(1);

  }
  if (ret)
   (*cleaned)++;
 }

 mmu_notifier_invalidate_range_end(&range);

 return 1;
}
