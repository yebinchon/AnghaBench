
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int FI_DATA_EXIST ;
 scalar_t__ MAX_INLINE_DATA (struct inode*) ;
 int NODE ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 void* inline_data_addr (struct inode*,struct page*) ;
 int memset (void*,int ,scalar_t__) ;
 int set_page_dirty (struct page*) ;

void f2fs_truncate_inline_inode(struct inode *inode,
     struct page *ipage, u64 from)
{
 void *addr;

 if (from >= MAX_INLINE_DATA(inode))
  return;

 addr = inline_data_addr(inode, ipage);

 f2fs_wait_on_page_writeback(ipage, NODE, 1, 1);
 memset(addr + from, 0, MAX_INLINE_DATA(inode) - from);
 set_page_dirty(ipage);

 if (from == 0)
  clear_inode_flag(inode, FI_DATA_EXIST);
}
