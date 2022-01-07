
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_page_prot; struct mm_struct* vm_mm; } ;
struct page_vma_mapped_walk {unsigned long address; int * pte; struct vm_area_struct* vma; int page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int MMU_NOTIFY_CLEAR ;
 int MM_ANONPAGES ;
 scalar_t__ PAGE_SIZE ;
 int PageAnon (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_LOCKED ;
 int compound_head (struct page*) ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,int ) ;
 int get_page (struct page*) ;
 int inc_mm_counter (struct mm_struct*,int ) ;
 int lock_page (struct page*) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 int mem_cgroup_try_charge (struct page*,struct mm_struct*,int ,struct mem_cgroup**,int) ;
 int mk_pte (struct page*,int ) ;
 int mm_counter_file (struct page*) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,scalar_t__) ;
 int munlock_vma_page (struct page*) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int page_mapped (struct page*) ;
 int page_remove_rmap (struct page*,int) ;
 int page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;
 int pte_pfn (int ) ;
 int ptep_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 int put_page (struct page*) ;
 int set_pte_at_notify (struct mm_struct*,unsigned long,int *,int ) ;
 int try_to_free_swap (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int __replace_page(struct vm_area_struct *vma, unsigned long addr,
    struct page *old_page, struct page *new_page)
{
 struct mm_struct *mm = vma->vm_mm;
 struct page_vma_mapped_walk pvmw = {
  .page = compound_head(old_page),
  .vma = vma,
  .address = addr,
 };
 int err;
 struct mmu_notifier_range range;
 struct mem_cgroup *memcg;

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, mm, addr,
    addr + PAGE_SIZE);

 if (new_page) {
  err = mem_cgroup_try_charge(new_page, vma->vm_mm, GFP_KERNEL,
         &memcg, 0);
  if (err)
   return err;
 }


 lock_page(old_page);

 mmu_notifier_invalidate_range_start(&range);
 err = -EAGAIN;
 if (!page_vma_mapped_walk(&pvmw)) {
  if (new_page)
   mem_cgroup_cancel_charge(new_page, memcg, 0);
  goto unlock;
 }
 VM_BUG_ON_PAGE(addr != pvmw.address, old_page);

 if (new_page) {
  get_page(new_page);
  page_add_new_anon_rmap(new_page, vma, addr, 0);
  mem_cgroup_commit_charge(new_page, memcg, 0, 0);
  lru_cache_add_active_or_unevictable(new_page, vma);
 } else

  dec_mm_counter(mm, MM_ANONPAGES);

 if (!PageAnon(old_page)) {
  dec_mm_counter(mm, mm_counter_file(old_page));
  inc_mm_counter(mm, MM_ANONPAGES);
 }

 flush_cache_page(vma, addr, pte_pfn(*pvmw.pte));
 ptep_clear_flush_notify(vma, addr, pvmw.pte);
 if (new_page)
  set_pte_at_notify(mm, addr, pvmw.pte,
      mk_pte(new_page, vma->vm_page_prot));

 page_remove_rmap(old_page, 0);
 if (!page_mapped(old_page))
  try_to_free_swap(old_page);
 page_vma_mapped_walk_done(&pvmw);

 if (vma->vm_flags & VM_LOCKED)
  munlock_vma_page(old_page);
 put_page(old_page);

 err = 0;
 unlock:
 mmu_notifier_invalidate_range_end(&range);
 unlock_page(old_page);
 return err;
}
