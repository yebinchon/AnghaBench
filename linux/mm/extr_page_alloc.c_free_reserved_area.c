
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int free_reserved_page (struct page*) ;
 int memset (void*,int,int ) ;
 void* page_address (struct page*) ;
 int pr_info (char*,char const*,unsigned long) ;
 struct page* virt_to_page (void*) ;

unsigned long free_reserved_area(void *start, void *end, int poison, const char *s)
{
 void *pos;
 unsigned long pages = 0;

 start = (void *)PAGE_ALIGN((unsigned long)start);
 end = (void *)((unsigned long)end & PAGE_MASK);
 for (pos = start; pos < end; pos += PAGE_SIZE, pages++) {
  struct page *page = virt_to_page(pos);
  void *direct_map_addr;
  direct_map_addr = page_address(page);
  if ((unsigned int)poison <= 0xFF)
   memset(direct_map_addr, poison, PAGE_SIZE);

  free_reserved_page(page);
 }

 if (pages && s)
  pr_info("Freeing %s memory: %ldK\n",
   s, pages << (PAGE_SHIFT - 10));

 return pages;
}
