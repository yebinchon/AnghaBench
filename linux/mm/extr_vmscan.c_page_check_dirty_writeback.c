
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* is_dirty_writeback ) (struct page*,int*,int*) ;} ;


 scalar_t__ PageAnon (struct page*) ;
 int PageDirty (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int PageWriteback (struct page*) ;
 int page_has_private (struct page*) ;
 int page_is_file_cache (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int stub1 (struct page*,int*,int*) ;

__attribute__((used)) static void page_check_dirty_writeback(struct page *page,
           bool *dirty, bool *writeback)
{
 struct address_space *mapping;





 if (!page_is_file_cache(page) ||
     (PageAnon(page) && !PageSwapBacked(page))) {
  *dirty = 0;
  *writeback = 0;
  return;
 }


 *dirty = PageDirty(page);
 *writeback = PageWriteback(page);


 if (!page_has_private(page))
  return;

 mapping = page_mapping(page);
 if (mapping && mapping->a_ops->is_dirty_writeback)
  mapping->a_ops->is_dirty_writeback(page, dirty, writeback);
}
