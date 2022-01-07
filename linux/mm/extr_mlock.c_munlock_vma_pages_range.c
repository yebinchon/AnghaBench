
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct vm_area_struct {int vm_flags; } ;
struct pagevec {int dummy; } ;
struct page {int dummy; } ;


 int FOLL_DUMP ;
 int FOLL_GET ;
 int IS_ERR (struct page*) ;
 unsigned long PAGE_SIZE ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 scalar_t__ PageTransTail (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int VM_LOCKED_CLEAR_MASK ;
 int __munlock_pagevec (struct pagevec*,struct zone*) ;
 unsigned long __munlock_pagevec_fill (struct pagevec*,struct vm_area_struct*,struct zone*,unsigned long,unsigned long) ;
 int cond_resched () ;
 struct page* follow_page (struct vm_area_struct*,unsigned long,int) ;
 int lock_page (struct page*) ;
 unsigned int munlock_vma_page (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

void munlock_vma_pages_range(struct vm_area_struct *vma,
        unsigned long start, unsigned long end)
{
 vma->vm_flags &= VM_LOCKED_CLEAR_MASK;

 while (start < end) {
  struct page *page;
  unsigned int page_mask = 0;
  unsigned long page_increm;
  struct pagevec pvec;
  struct zone *zone;

  pagevec_init(&pvec);







  page = follow_page(vma, start, FOLL_GET | FOLL_DUMP);

  if (page && !IS_ERR(page)) {
   if (PageTransTail(page)) {
    VM_BUG_ON_PAGE(PageMlocked(page), page);
    put_page(page);
   } else if (PageTransHuge(page)) {
    lock_page(page);






    page_mask = munlock_vma_page(page);
    unlock_page(page);
    put_page(page);
   } else {





    pagevec_add(&pvec, page);
    zone = page_zone(page);







    start = __munlock_pagevec_fill(&pvec, vma,
      zone, start, end);
    __munlock_pagevec(&pvec, zone);
    goto next;
   }
  }
  page_increm = 1 + page_mask;
  start += page_increm * PAGE_SIZE;
next:
  cond_resched();
 }
}
