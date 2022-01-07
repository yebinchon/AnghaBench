
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {int i_pages; } ;
typedef int pgoff_t ;
struct TYPE_8__ {int xa_index; } ;


 int XA_STATE (TYPE_1__,int *,int ) ;
 struct page* find_subpage (struct page*,int ) ;
 int page_cache_get_speculative (struct page*) ;
 int put_page (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xa_is_value (struct page*) ;
 TYPE_1__ xas ;
 struct page* xas_load (TYPE_1__*) ;
 struct page* xas_next (TYPE_1__*) ;
 struct page* xas_reload (TYPE_1__*) ;
 int xas_reset (TYPE_1__*) ;
 scalar_t__ xas_retry (TYPE_1__*,struct page*) ;

unsigned find_get_pages_contig(struct address_space *mapping, pgoff_t index,
          unsigned int nr_pages, struct page **pages)
{
 XA_STATE(xas, &mapping->i_pages, index);
 struct page *page;
 unsigned int ret = 0;

 if (unlikely(!nr_pages))
  return 0;

 rcu_read_lock();
 for (page = xas_load(&xas); page; page = xas_next(&xas)) {
  if (xas_retry(&xas, page))
   continue;




  if (xa_is_value(page))
   break;

  if (!page_cache_get_speculative(page))
   goto retry;


  if (unlikely(page != xas_reload(&xas)))
   goto put_page;

  pages[ret] = find_subpage(page, xas.xa_index);
  if (++ret == nr_pages)
   break;
  continue;
put_page:
  put_page(page);
retry:
  xas_reset(&xas);
 }
 rcu_read_unlock();
 return ret;
}
