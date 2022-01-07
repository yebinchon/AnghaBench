
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageUptodate (struct page*) ;
 int F2FS_DIRTY_NODES ;
 int F2FS_P_SB (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int dec_page_count (int ,int ) ;
 int f2fs_clear_page_cache_dirty_tag (struct page*) ;

__attribute__((used)) static void clear_node_page_dirty(struct page *page)
{
 if (PageDirty(page)) {
  f2fs_clear_page_cache_dirty_tag(page);
  clear_page_dirty_for_io(page);
  dec_page_count(F2FS_P_SB(page), F2FS_DIRTY_NODES);
 }
 ClearPageUptodate(page);
}
