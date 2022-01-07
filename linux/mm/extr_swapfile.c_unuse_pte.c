
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int vm_page_prot; int vm_mm; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MM_ANONPAGES ;
 int MM_SWAPENTS ;
 int activate_page (struct page*) ;
 int dec_mm_counter (int ,int ) ;
 int get_page (struct page*) ;
 int inc_mm_counter (int ,int ) ;
 struct page* ksm_might_need_to_copy (struct page*,struct vm_area_struct*,unsigned long) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 scalar_t__ mem_cgroup_try_charge (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int mk_pte (struct page*,int ) ;
 int page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int pte_mkold (int ) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 int pte_same_as_swp (int ,int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int put_page (struct page*) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;
 int swap_free (int ) ;
 int swp_entry_to_pte (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int unuse_pte(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, swp_entry_t entry, struct page *page)
{
 struct page *swapcache;
 struct mem_cgroup *memcg;
 spinlock_t *ptl;
 pte_t *pte;
 int ret = 1;

 swapcache = page;
 page = ksm_might_need_to_copy(page, vma, addr);
 if (unlikely(!page))
  return -ENOMEM;

 if (mem_cgroup_try_charge(page, vma->vm_mm, GFP_KERNEL,
    &memcg, 0)) {
  ret = -ENOMEM;
  goto out_nolock;
 }

 pte = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);
 if (unlikely(!pte_same_as_swp(*pte, swp_entry_to_pte(entry)))) {
  mem_cgroup_cancel_charge(page, memcg, 0);
  ret = 0;
  goto out;
 }

 dec_mm_counter(vma->vm_mm, MM_SWAPENTS);
 inc_mm_counter(vma->vm_mm, MM_ANONPAGES);
 get_page(page);
 set_pte_at(vma->vm_mm, addr, pte,
     pte_mkold(mk_pte(page, vma->vm_page_prot)));
 if (page == swapcache) {
  page_add_anon_rmap(page, vma, addr, 0);
  mem_cgroup_commit_charge(page, memcg, 1, 0);
 } else {
  page_add_new_anon_rmap(page, vma, addr, 0);
  mem_cgroup_commit_charge(page, memcg, 0, 0);
  lru_cache_add_active_or_unevictable(page, vma);
 }
 swap_free(entry);




 activate_page(page);
out:
 pte_unmap_unlock(pte, ptl);
out_nolock:
 if (page != swapcache) {
  unlock_page(page);
  put_page(page);
 }
 return ret;
}
