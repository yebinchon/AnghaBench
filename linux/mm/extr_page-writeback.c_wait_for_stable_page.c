
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 scalar_t__ bdi_cap_stable_pages_required (int ) ;
 int inode_to_bdi (int ) ;
 int wait_on_page_writeback (struct page*) ;

void wait_for_stable_page(struct page *page)
{
 if (bdi_cap_stable_pages_required(inode_to_bdi(page->mapping->host)))
  wait_on_page_writeback(page);
}
