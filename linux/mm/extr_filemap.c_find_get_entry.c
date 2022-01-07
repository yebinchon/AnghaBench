
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int i_pages; } ;
typedef int pgoff_t ;


 int XA_STATE (int ,int *,int ) ;
 struct page* find_subpage (struct page*,int ) ;
 int page_cache_get_speculative (struct page*) ;
 int put_page (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xa_is_value (struct page*) ;
 int xas ;
 struct page* xas_load (int *) ;
 struct page* xas_reload (int *) ;
 int xas_reset (int *) ;
 scalar_t__ xas_retry (int *,struct page*) ;

struct page *find_get_entry(struct address_space *mapping, pgoff_t offset)
{
 XA_STATE(xas, &mapping->i_pages, offset);
 struct page *page;

 rcu_read_lock();
repeat:
 xas_reset(&xas);
 page = xas_load(&xas);
 if (xas_retry(&xas, page))
  goto repeat;




 if (!page || xa_is_value(page))
  goto out;

 if (!page_cache_get_speculative(page))
  goto repeat;






 if (unlikely(page != xas_reload(&xas))) {
  put_page(page);
  goto repeat;
 }
 page = find_subpage(page, offset);
out:
 rcu_read_unlock();

 return page;
}
