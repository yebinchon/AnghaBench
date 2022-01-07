
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int BUG_ON (int) ;
 int __free_page (struct page*) ;
 int swsusp_unset_page_forbidden (struct page*) ;
 int swsusp_unset_page_free (struct page*) ;
 int virt_addr_valid (void*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static inline void free_image_page(void *addr, int clear_nosave_free)
{
 struct page *page;

 BUG_ON(!virt_addr_valid(addr));

 page = virt_to_page(addr);

 swsusp_unset_page_forbidden(page);
 if (clear_nosave_free)
  swsusp_unset_page_free(page);

 __free_page(page);
}
