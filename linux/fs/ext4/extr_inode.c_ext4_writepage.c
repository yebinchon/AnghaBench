
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {unsigned int index; TYPE_1__* mapping; } ;
struct inode {TYPE_3__* i_sb; } ;
struct ext4_io_submit {int io_end; } ;
struct buffer_head {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_6__ {unsigned int s_blocksize; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {struct inode* host; } ;


 int EIO ;
 int ENOMEM ;
 int EXT4_SB (TYPE_3__*) ;
 int GFP_NOFS ;
 unsigned int PAGE_MASK ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int PF_KSWAPD ;
 int PF_MEMALLOC ;
 scalar_t__ PageChecked (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __ext4_journalled_writepage (struct page*,unsigned int) ;
 TYPE_2__* current ;
 int ext4_bh_delay_or_unwritten ;
 int ext4_bio_write_page (struct ext4_io_submit*,struct page*,unsigned int,struct writeback_control*,int) ;
 int ext4_forced_shutdown (int ) ;
 int ext4_init_io_end (struct inode*,int ) ;
 int ext4_invalidatepage (struct page*,int ,unsigned int) ;
 int ext4_io_submit (struct ext4_io_submit*) ;
 int ext4_io_submit_init (struct ext4_io_submit*,struct writeback_control*) ;
 int ext4_put_io_end_defer (int ) ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int ext4_verity_in_progress (struct inode*) ;
 scalar_t__ ext4_walk_page_buffers (int *,struct buffer_head*,int ,unsigned int,int *,int ) ;
 unsigned int i_size_read (struct inode*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int trace_ext4_writepage (struct page*) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ext4_writepage(struct page *page,
     struct writeback_control *wbc)
{
 int ret = 0;
 loff_t size;
 unsigned int len;
 struct buffer_head *page_bufs = ((void*)0);
 struct inode *inode = page->mapping->host;
 struct ext4_io_submit io_submit;
 bool keep_towrite = 0;

 if (unlikely(ext4_forced_shutdown(EXT4_SB(inode->i_sb)))) {
  ext4_invalidatepage(page, 0, PAGE_SIZE);
  unlock_page(page);
  return -EIO;
 }

 trace_ext4_writepage(page);
 size = i_size_read(inode);
 if (page->index == size >> PAGE_SHIFT &&
     !ext4_verity_in_progress(inode))
  len = size & ~PAGE_MASK;
 else
  len = PAGE_SIZE;

 page_bufs = page_buffers(page);
 if (ext4_walk_page_buffers(((void*)0), page_bufs, 0, len, ((void*)0),
       ext4_bh_delay_or_unwritten)) {
  redirty_page_for_writepage(wbc, page);
  if ((current->flags & PF_MEMALLOC) ||
      (inode->i_sb->s_blocksize == PAGE_SIZE)) {





   WARN_ON_ONCE((current->flags & (PF_MEMALLOC|PF_KSWAPD))
       == PF_MEMALLOC);
   unlock_page(page);
   return 0;
  }
  keep_towrite = 1;
 }

 if (PageChecked(page) && ext4_should_journal_data(inode))




  return __ext4_journalled_writepage(page, len);

 ext4_io_submit_init(&io_submit, wbc);
 io_submit.io_end = ext4_init_io_end(inode, GFP_NOFS);
 if (!io_submit.io_end) {
  redirty_page_for_writepage(wbc, page);
  unlock_page(page);
  return -ENOMEM;
 }
 ret = ext4_bio_write_page(&io_submit, page, len, wbc, keep_towrite);
 ext4_io_submit(&io_submit);

 ext4_put_io_end_defer(io_submit.io_end);
 return ret;
}
