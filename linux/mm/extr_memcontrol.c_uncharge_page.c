
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uncharge_gather {unsigned int nr_huge; unsigned int nr_anon; unsigned int nr_file; unsigned int nr_shmem; struct page* dummy_page; int nr_kmem; int pgpgout; int * memcg; } ;
struct page {int * mem_cgroup; } ;


 scalar_t__ PageAnon (struct page*) ;
 int PageHWPoison (struct page*) ;
 int PageKmemcg (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __ClearPageKmemcg (struct page*) ;
 unsigned int compound_nr (struct page*) ;
 int is_zone_device_page (struct page*) ;
 scalar_t__ page_count (struct page*) ;
 int uncharge_batch (struct uncharge_gather*) ;
 int uncharge_gather_clear (struct uncharge_gather*) ;

__attribute__((used)) static void uncharge_page(struct page *page, struct uncharge_gather *ug)
{
 VM_BUG_ON_PAGE(PageLRU(page), page);
 VM_BUG_ON_PAGE(page_count(page) && !is_zone_device_page(page) &&
   !PageHWPoison(page) , page);

 if (!page->mem_cgroup)
  return;







 if (ug->memcg != page->mem_cgroup) {
  if (ug->memcg) {
   uncharge_batch(ug);
   uncharge_gather_clear(ug);
  }
  ug->memcg = page->mem_cgroup;
 }

 if (!PageKmemcg(page)) {
  unsigned int nr_pages = 1;

  if (PageTransHuge(page)) {
   nr_pages = compound_nr(page);
   ug->nr_huge += nr_pages;
  }
  if (PageAnon(page))
   ug->nr_anon += nr_pages;
  else {
   ug->nr_file += nr_pages;
   if (PageSwapBacked(page))
    ug->nr_shmem += nr_pages;
  }
  ug->pgpgout++;
 } else {
  ug->nr_kmem += compound_nr(page);
  __ClearPageKmemcg(page);
 }

 ug->dummy_page = page;
 page->mem_cgroup = ((void*)0);
}
