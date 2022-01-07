
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int __free_page (struct page*) ;
 unsigned long alloc_highmem ;
 unsigned long alloc_normal ;
 int copy_bm ;
 unsigned long count_data_pages () ;
 scalar_t__ count_highmem_pages () ;
 int memory_bm_clear_bit (int *,unsigned long) ;
 unsigned long memory_bm_next_pfn (int *) ;
 int memory_bm_position_reset (int *) ;
 struct page* pfn_to_page (unsigned long) ;
 int swsusp_unset_page_forbidden (struct page*) ;
 int swsusp_unset_page_free (struct page*) ;

__attribute__((used)) static unsigned long free_unnecessary_pages(void)
{
 unsigned long save, to_free_normal, to_free_highmem, free;

 save = count_data_pages();
 if (alloc_normal >= save) {
  to_free_normal = alloc_normal - save;
  save = 0;
 } else {
  to_free_normal = 0;
  save -= alloc_normal;
 }
 save += count_highmem_pages();
 if (alloc_highmem >= save) {
  to_free_highmem = alloc_highmem - save;
 } else {
  to_free_highmem = 0;
  save -= alloc_highmem;
  if (to_free_normal > save)
   to_free_normal -= save;
  else
   to_free_normal = 0;
 }
 free = to_free_normal + to_free_highmem;

 memory_bm_position_reset(&copy_bm);

 while (to_free_normal > 0 || to_free_highmem > 0) {
  unsigned long pfn = memory_bm_next_pfn(&copy_bm);
  struct page *page = pfn_to_page(pfn);

  if (PageHighMem(page)) {
   if (!to_free_highmem)
    continue;
   to_free_highmem--;
   alloc_highmem--;
  } else {
   if (!to_free_normal)
    continue;
   to_free_normal--;
   alloc_normal--;
  }
  memory_bm_clear_bit(&copy_bm, pfn);
  swsusp_unset_page_forbidden(page);
  swsusp_unset_page_free(page);
  __free_page(page);
 }

 return free;
}
