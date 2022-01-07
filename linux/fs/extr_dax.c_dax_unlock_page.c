
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; struct address_space* mapping; } ;
struct address_space {TYPE_1__* host; int i_pages; } ;
typedef scalar_t__ dax_entry_t ;
struct TYPE_2__ {int i_mode; } ;


 scalar_t__ S_ISCHR (int ) ;
 int XA_STATE (int ,int *,int ) ;
 int dax_unlock_entry (int *,void*) ;
 int xas ;

void dax_unlock_page(struct page *page, dax_entry_t cookie)
{
 struct address_space *mapping = page->mapping;
 XA_STATE(xas, &mapping->i_pages, page->index);

 if (S_ISCHR(mapping->host->i_mode))
  return;

 dax_unlock_entry(&xas, (void *)cookie);
}
