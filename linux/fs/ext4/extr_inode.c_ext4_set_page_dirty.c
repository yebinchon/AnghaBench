
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageDirty (struct page*) ;
 int PageLocked (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __set_page_dirty_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static int ext4_set_page_dirty(struct page *page)
{
 WARN_ON_ONCE(!PageLocked(page) && !PageDirty(page));
 WARN_ON_ONCE(!page_has_buffers(page));
 return __set_page_dirty_buffers(page);
}
