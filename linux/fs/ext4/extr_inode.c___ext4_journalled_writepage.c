
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct page {scalar_t__ index; struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_13__ {TYPE_1__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_12__ {int t_tid; } ;
struct TYPE_11__ {int i_datasync_tid; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int ClearPageChecked (struct page*) ;
 int EXT4_HT_WRITE_PAGE ;
 TYPE_10__* EXT4_I (struct inode*) ;
 int EXT4_STATE_JDATA ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int bget_one ;
 int bput_one ;
 int brelse (struct buffer_head*) ;
 int do_journal_get_write_access ;
 unsigned int ext4_get_max_inline_size (struct inode*) ;
 int ext4_handle_valid (TYPE_2__*) ;
 int ext4_has_inline_data (struct inode*) ;
 TYPE_2__* ext4_journal_start (struct inode*,int ,int ) ;
 int ext4_journal_stop (TYPE_2__*) ;
 struct buffer_head* ext4_journalled_write_inline_data (struct inode*,unsigned int,struct page*) ;
 int ext4_mark_inode_dirty (TYPE_2__*,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_walk_page_buffers (TYPE_2__*,struct buffer_head*,int ,unsigned int,int *,int ) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 int get_page (struct page*) ;
 int lock_page (struct page*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int write_end_fn ;

__attribute__((used)) static int __ext4_journalled_writepage(struct page *page,
           unsigned int len)
{
 struct address_space *mapping = page->mapping;
 struct inode *inode = mapping->host;
 struct buffer_head *page_bufs = ((void*)0);
 handle_t *handle = ((void*)0);
 int ret = 0, err = 0;
 int inline_data = ext4_has_inline_data(inode);
 struct buffer_head *inode_bh = ((void*)0);

 ClearPageChecked(page);

 if (inline_data) {
  BUG_ON(page->index != 0);
  BUG_ON(len > ext4_get_max_inline_size(inode));
  inode_bh = ext4_journalled_write_inline_data(inode, len, page);
  if (inode_bh == ((void*)0))
   goto out;
 } else {
  page_bufs = page_buffers(page);
  if (!page_bufs) {
   BUG();
   goto out;
  }
  ext4_walk_page_buffers(handle, page_bufs, 0, len,
           ((void*)0), bget_one);
 }





 get_page(page);
 unlock_page(page);

 handle = ext4_journal_start(inode, EXT4_HT_WRITE_PAGE,
        ext4_writepage_trans_blocks(inode));
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  put_page(page);
  goto out_no_pagelock;
 }
 BUG_ON(!ext4_handle_valid(handle));

 lock_page(page);
 put_page(page);
 if (page->mapping != mapping) {

  ext4_journal_stop(handle);
  ret = 0;
  goto out;
 }

 if (inline_data) {
  ret = ext4_mark_inode_dirty(handle, inode);
 } else {
  ret = ext4_walk_page_buffers(handle, page_bufs, 0, len, ((void*)0),
          do_journal_get_write_access);

  err = ext4_walk_page_buffers(handle, page_bufs, 0, len, ((void*)0),
          write_end_fn);
 }
 if (ret == 0)
  ret = err;
 EXT4_I(inode)->i_datasync_tid = handle->h_transaction->t_tid;
 err = ext4_journal_stop(handle);
 if (!ret)
  ret = err;

 if (!ext4_has_inline_data(inode))
  ext4_walk_page_buffers(((void*)0), page_bufs, 0, len,
           ((void*)0), bput_one);
 ext4_set_inode_state(inode, EXT4_STATE_JDATA);
out:
 unlock_page(page);
out_no_pagelock:
 brelse(inode_bh);
 return ret;
}
