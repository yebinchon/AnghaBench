
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int i_pages; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int XA_STATE (int ,int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ xa_is_value (struct page*) ;
 int xas ;
 struct page* xas_find (int *,int) ;
 scalar_t__ xas_retry (int *,struct page*) ;

bool filemap_range_has_page(struct address_space *mapping,
      loff_t start_byte, loff_t end_byte)
{
 struct page *page;
 XA_STATE(xas, &mapping->i_pages, start_byte >> PAGE_SHIFT);
 pgoff_t max = end_byte >> PAGE_SHIFT;

 if (end_byte < start_byte)
  return 0;

 rcu_read_lock();
 for (;;) {
  page = xas_find(&xas, max);
  if (xas_retry(&xas, page))
   continue;

  if (xa_is_value(page))
   continue;





  break;
 }
 rcu_read_unlock();

 return page != ((void*)0);
}
