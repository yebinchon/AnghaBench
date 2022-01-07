
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvec {scalar_t__ iov_len; int iov_base; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int get_page (struct page*) ;
 struct page* kmap_to_page (int ) ;

int get_kernel_pages(const struct kvec *kiov, int nr_segs, int write,
  struct page **pages)
{
 int seg;

 for (seg = 0; seg < nr_segs; seg++) {
  if (WARN_ON(kiov[seg].iov_len != PAGE_SIZE))
   return seg;

  pages[seg] = kmap_to_page(kiov[seg].iov_base);
  get_page(pages[seg]);
 }

 return seg;
}
