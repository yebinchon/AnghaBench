
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct super_block {int s_blocksize; unsigned long s_blocksize_bits; } ;
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct page {unsigned long index; TYPE_1__* mapping; } ;
struct inode {unsigned long i_size; int i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; struct buffer_head* b_this_page; } ;
typedef unsigned long sector_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BH_Dirty ;
 int BH_Uptodate ;
 int BUG_ON (int ) ;
 int ClearPageChecked (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PF_MEMALLOC ;
 int PageChecked (struct page*) ;
 int PageWriteback (struct page*) ;
 int REQ_OP_WRITE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 scalar_t__ buffer_async_write (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int create_empty_buffers (struct page*,int,int) ;
 TYPE_2__* current ;
 int end_page_writeback (struct page*) ;
 int get_bh (struct buffer_head*) ;
 int i_size_read (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int journal_mark_dirty (struct reiserfs_transaction_handle*,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int map_block_for_writepage (struct inode*,struct buffer_head*,unsigned long) ;
 int mark_buffer_async_write (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int put_bh (struct buffer_head*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int reiserfs_prepare_for_journal (struct super_block*,struct buffer_head*,int) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_write_lock (struct super_block*) ;
 int reiserfs_write_unlock (struct super_block*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int set_page_writeback (struct page*) ;
 int submit_bh (int ,int ,struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 int trylock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

__attribute__((used)) static int reiserfs_write_full_page(struct page *page,
        struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 unsigned long end_index = inode->i_size >> PAGE_SHIFT;
 int error = 0;
 unsigned long block;
 sector_t last_block;
 struct buffer_head *head, *bh;
 int partial = 0;
 int nr = 0;
 int checked = PageChecked(page);
 struct reiserfs_transaction_handle th;
 struct super_block *s = inode->i_sb;
 int bh_per_page = PAGE_SIZE / s->s_blocksize;
 th.t_trans_id = 0;


 if (checked && (current->flags & PF_MEMALLOC)) {
  redirty_page_for_writepage(wbc, page);
  unlock_page(page);
  return 0;
 }







 if (!page_has_buffers(page)) {
  create_empty_buffers(page, s->s_blocksize,
         (1 << BH_Dirty) | (1 << BH_Uptodate));
 }
 head = page_buffers(page);





 if (page->index >= end_index) {
  unsigned last_offset;

  last_offset = inode->i_size & (PAGE_SIZE - 1);

  if (page->index >= end_index + 1 || !last_offset) {
   unlock_page(page);
   return 0;
  }
  zero_user_segment(page, last_offset, PAGE_SIZE);
 }
 bh = head;
 block = page->index << (PAGE_SHIFT - s->s_blocksize_bits);
 last_block = (i_size_read(inode) - 1) >> inode->i_blkbits;

 do {
  if (block > last_block) {





   clear_buffer_dirty(bh);
   set_buffer_uptodate(bh);
  } else if ((checked || buffer_dirty(bh)) &&
             (!buffer_mapped(bh) || (buffer_mapped(bh)
             && bh->b_blocknr ==
             0))) {





   if ((error = map_block_for_writepage(inode, bh, block))) {
    goto fail;
   }
  }
  bh = bh->b_this_page;
  block++;
 } while (bh != head);







 if (checked) {
  ClearPageChecked(page);
  reiserfs_write_lock(s);
  error = journal_begin(&th, s, bh_per_page + 1);
  if (error) {
   reiserfs_write_unlock(s);
   goto fail;
  }
  reiserfs_update_inode_transaction(inode);
 }

 do {
  get_bh(bh);
  if (!buffer_mapped(bh))
   continue;
  if (buffer_mapped(bh) && bh->b_blocknr == 0)
   continue;

  if (checked) {
   reiserfs_prepare_for_journal(s, bh, 1);
   journal_mark_dirty(&th, bh);
   continue;
  }




  if (wbc->sync_mode != WB_SYNC_NONE) {
   lock_buffer(bh);
  } else {
   if (!trylock_buffer(bh)) {
    redirty_page_for_writepage(wbc, page);
    continue;
   }
  }
  if (test_clear_buffer_dirty(bh)) {
   mark_buffer_async_write(bh);
  } else {
   unlock_buffer(bh);
  }
 } while ((bh = bh->b_this_page) != head);

 if (checked) {
  error = journal_end(&th);
  reiserfs_write_unlock(s);
  if (error)
   goto fail;
 }
 BUG_ON(PageWriteback(page));
 set_page_writeback(page);
 unlock_page(page);






 do {
  struct buffer_head *next = bh->b_this_page;
  if (buffer_async_write(bh)) {
   submit_bh(REQ_OP_WRITE, 0, bh);
   nr++;
  }
  put_bh(bh);
  bh = next;
 } while (bh != head);

 error = 0;
done:
 if (nr == 0) {






  bh = head;
  do {
   if (!buffer_uptodate(bh)) {
    partial = 1;
    break;
   }
   bh = bh->b_this_page;
  } while (bh != head);
  if (!partial)
   SetPageUptodate(page);
  end_page_writeback(page);
 }
 return error;

fail:





 ClearPageUptodate(page);
 bh = head;
 do {
  get_bh(bh);
  if (buffer_mapped(bh) && buffer_dirty(bh) && bh->b_blocknr) {
   lock_buffer(bh);
   mark_buffer_async_write(bh);
  } else {




   clear_buffer_dirty(bh);
  }
  bh = bh->b_this_page;
 } while (bh != head);
 SetPageError(page);
 BUG_ON(PageWriteback(page));
 set_page_writeback(page);
 unlock_page(page);
 do {
  struct buffer_head *next = bh->b_this_page;
  if (buffer_async_write(bh)) {
   clear_buffer_dirty(bh);
   submit_bh(REQ_OP_WRITE, 0, bh);
   nr++;
  }
  put_bh(bh);
  bh = next;
 } while (bh != head);
 goto done;
}
