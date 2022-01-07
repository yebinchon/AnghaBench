
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int do_copy_page (void*,int ) ;
 int kernel_map_pages (struct page*,int,int) ;
 scalar_t__ kernel_page_present (struct page*) ;
 int page_address (struct page*) ;

__attribute__((used)) static void safe_copy_page(void *dst, struct page *s_page)
{
 if (kernel_page_present(s_page)) {
  do_copy_page(dst, page_address(s_page));
 } else {
  kernel_map_pages(s_page, 1, 1);
  do_copy_page(dst, page_address(s_page));
  kernel_map_pages(s_page, 1, 0);
 }
}
