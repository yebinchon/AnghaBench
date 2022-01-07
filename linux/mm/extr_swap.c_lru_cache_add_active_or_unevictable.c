
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;


 int NR_MLOCK ;
 int PageLRU (struct page*) ;
 int SetPageActive (struct page*) ;
 int TestSetPageMlocked (struct page*) ;
 int UNEVICTABLE_PGMLOCKED ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int VM_LOCKED ;
 int VM_SPECIAL ;
 int __mod_zone_page_state (int ,int ,int ) ;
 int count_vm_event (int ) ;
 int hpage_nr_pages (struct page*) ;
 scalar_t__ likely (int) ;
 int lru_cache_add (struct page*) ;
 int page_zone (struct page*) ;

void lru_cache_add_active_or_unevictable(struct page *page,
      struct vm_area_struct *vma)
{
 VM_BUG_ON_PAGE(PageLRU(page), page);

 if (likely((vma->vm_flags & (VM_LOCKED | VM_SPECIAL)) != VM_LOCKED))
  SetPageActive(page);
 else if (!TestSetPageMlocked(page)) {





  __mod_zone_page_state(page_zone(page), NR_MLOCK,
        hpage_nr_pages(page));
  count_vm_event(UNEVICTABLE_PGMLOCKED);
 }
 lru_cache_add(page);
}
