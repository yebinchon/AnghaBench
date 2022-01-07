
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int ZSWAP_SWAPCACHE_EXIST ;
 int ZSWAP_SWAPCACHE_FAIL ;
 int ZSWAP_SWAPCACHE_NEW ;
 struct page* __read_swap_cache_async (int ,int ,int *,int ,int*) ;

__attribute__((used)) static int zswap_get_swap_cache_page(swp_entry_t entry,
    struct page **retpage)
{
 bool page_was_allocated;

 *retpage = __read_swap_cache_async(entry, GFP_KERNEL,
   ((void*)0), 0, &page_was_allocated);
 if (page_was_allocated)
  return ZSWAP_SWAPCACHE_NEW;
 if (!*retpage)
  return ZSWAP_SWAPCACHE_FAIL;
 return ZSWAP_SWAPCACHE_EXIST;
}
