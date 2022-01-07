
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int F2FS_P_SB (struct page*) ;
 int MAX_INLINE_DATA (struct inode*) ;
 int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int f2fs_bug_on (int ,int ) ;
 int flush_dcache_page (struct page*) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,int ) ;
 int zero_user_segment (struct page*,int ,int ) ;

void f2fs_do_read_inline_data(struct page *page, struct page *ipage)
{
 struct inode *inode = page->mapping->host;
 void *src_addr, *dst_addr;

 if (PageUptodate(page))
  return;

 f2fs_bug_on(F2FS_P_SB(page), page->index);

 zero_user_segment(page, MAX_INLINE_DATA(inode), PAGE_SIZE);


 src_addr = inline_data_addr(inode, ipage);
 dst_addr = kmap_atomic(page);
 memcpy(dst_addr, src_addr, MAX_INLINE_DATA(inode));
 flush_dcache_page(page);
 kunmap_atomic(dst_addr);
 if (!PageUptodate(page))
  SetPageUptodate(page);
}
