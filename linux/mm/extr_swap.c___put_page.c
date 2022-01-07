
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int pgmap; } ;


 int PageCompound (struct page*) ;
 int __put_compound_page (struct page*) ;
 int __put_single_page (struct page*) ;
 scalar_t__ is_zone_device_page (struct page*) ;
 int put_dev_pagemap (int ) ;
 scalar_t__ unlikely (int ) ;

void __put_page(struct page *page)
{
 if (is_zone_device_page(page)) {
  put_dev_pagemap(page->pgmap);





  return;
 }

 if (unlikely(PageCompound(page)))
  __put_compound_page(page);
 else
  __put_single_page(page);
}
