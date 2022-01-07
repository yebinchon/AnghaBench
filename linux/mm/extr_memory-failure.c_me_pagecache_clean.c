
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int MF_FAILED ;
 int MF_RECOVERED ;
 scalar_t__ PageAnon (struct page*) ;
 int delete_from_lru_cache (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int truncate_error_page (struct page*,unsigned long,struct address_space*) ;

__attribute__((used)) static int me_pagecache_clean(struct page *p, unsigned long pfn)
{
 struct address_space *mapping;

 delete_from_lru_cache(p);





 if (PageAnon(p))
  return MF_RECOVERED;
 mapping = page_mapping(p);
 if (!mapping) {



  return MF_FAILED;
 }






 return truncate_error_page(p, pfn, mapping);
}
