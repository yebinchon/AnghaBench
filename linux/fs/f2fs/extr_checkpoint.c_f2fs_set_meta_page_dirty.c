
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int F2FS_DIRTY_META ;
 int F2FS_P_SB (struct page*) ;
 int META ;
 int PageDirty (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 int f2fs_set_page_private (struct page*,int ) ;
 int f2fs_trace_pid (struct page*) ;
 int inc_page_count (int ,int ) ;
 int trace_f2fs_set_page_dirty (struct page*,int ) ;

__attribute__((used)) static int f2fs_set_meta_page_dirty(struct page *page)
{
 trace_f2fs_set_page_dirty(page, META);

 if (!PageUptodate(page))
  SetPageUptodate(page);
 if (!PageDirty(page)) {
  __set_page_dirty_nobuffers(page);
  inc_page_count(F2FS_P_SB(page), F2FS_DIRTY_META);
  f2fs_set_page_private(page, 0);
  f2fs_trace_pid(page);
  return 1;
 }
 return 0;
}
