
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned long EFAULT ;
 int MMU_NOTIFY_CLEAR ;
 int MM_ANONPAGES ;
 scalar_t__ PAGE_SIZE ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int get_page (struct page*) ;
 int is_zero_pfn (int ) ;
 int mk_pte (struct page*,int ) ;
 int * mm_find_pmd (struct mm_struct*,unsigned long) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,scalar_t__) ;
 int page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 unsigned long page_address_in_vma (struct page*,struct vm_area_struct*) ;
 int page_mapped (struct page*) ;
 int page_remove_rmap (struct page*,int) ;
 int page_to_pfn (struct page*) ;
 int pfn_pte (int ,int ) ;
 int pte_mkspecial (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_pfn (int ) ;
 int pte_same (int ,int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 int put_page (struct page*) ;
 int set_pte_at_notify (struct mm_struct*,unsigned long,int *,int ) ;
 int try_to_free_swap (struct page*) ;

__attribute__((used)) static int replace_page(struct vm_area_struct *vma, struct page *page,
   struct page *kpage, pte_t orig_pte)
{
 struct mm_struct *mm = vma->vm_mm;
 pmd_t *pmd;
 pte_t *ptep;
 pte_t newpte;
 spinlock_t *ptl;
 unsigned long addr;
 int err = -EFAULT;
 struct mmu_notifier_range range;

 addr = page_address_in_vma(page, vma);
 if (addr == -EFAULT)
  goto out;

 pmd = mm_find_pmd(mm, addr);
 if (!pmd)
  goto out;

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, mm, addr,
    addr + PAGE_SIZE);
 mmu_notifier_invalidate_range_start(&range);

 ptep = pte_offset_map_lock(mm, pmd, addr, &ptl);
 if (!pte_same(*ptep, orig_pte)) {
  pte_unmap_unlock(ptep, ptl);
  goto out_mn;
 }





 if (!is_zero_pfn(page_to_pfn(kpage))) {
  get_page(kpage);
  page_add_anon_rmap(kpage, vma, addr, 0);
  newpte = mk_pte(kpage, vma->vm_page_prot);
 } else {
  newpte = pte_mkspecial(pfn_pte(page_to_pfn(kpage),
            vma->vm_page_prot));






  dec_mm_counter(mm, MM_ANONPAGES);
 }

 flush_cache_page(vma, addr, pte_pfn(*ptep));






 ptep_clear_flush(vma, addr, ptep);
 set_pte_at_notify(mm, addr, ptep, newpte);

 page_remove_rmap(page, 0);
 if (!page_mapped(page))
  try_to_free_swap(page);
 put_page(page);

 pte_unmap_unlock(ptep, ptl);
 err = 0;
out_mn:
 mmu_notifier_invalidate_range_end(&range);
out:
 return err;
}
