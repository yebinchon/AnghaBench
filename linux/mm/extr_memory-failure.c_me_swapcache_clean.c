
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MF_FAILED ;
 int MF_RECOVERED ;
 int delete_from_lru_cache (struct page*) ;
 int delete_from_swap_cache (struct page*) ;

__attribute__((used)) static int me_swapcache_clean(struct page *p, unsigned long pfn)
{
 delete_from_swap_cache(p);

 if (!delete_from_lru_cache(p))
  return MF_RECOVERED;
 else
  return MF_FAILED;
}
