
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_5__ {unsigned int s_blocksize; } ;


 int ENOENT ;
 int JOURNAL_PER_BALANCE_CNT ;
 int PAGE_SIZE ;
 int add_save_link (struct reiserfs_transaction_handle*,struct inode*,int) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 int grab_tail_page (struct inode*,struct page**,struct buffer_head**) ;
 int journal_begin (struct reiserfs_transaction_handle*,TYPE_1__*,int) ;
 int journal_end (struct reiserfs_transaction_handle*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int put_page (struct page*) ;
 int reiserfs_do_truncate (struct reiserfs_transaction_handle*,struct inode*,struct page*,int) ;
 int reiserfs_error (TYPE_1__*,char*,char*,int) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_write_lock (TYPE_1__*) ;
 int reiserfs_write_unlock (TYPE_1__*) ;
 int remove_save_link (struct inode*,int) ;
 int unlock_page (struct page*) ;
 int zero_user (struct page*,unsigned long,unsigned int) ;

int reiserfs_truncate_file(struct inode *inode, int update_timestamps)
{
 struct reiserfs_transaction_handle th;

 unsigned long offset = inode->i_size & (PAGE_SIZE - 1);
 unsigned blocksize = inode->i_sb->s_blocksize;
 unsigned length;
 struct page *page = ((void*)0);
 int error;
 struct buffer_head *bh = ((void*)0);
 int err2;

 reiserfs_write_lock(inode->i_sb);

 if (inode->i_size > 0) {
  error = grab_tail_page(inode, &page, &bh);
  if (error) {





   if (error != -ENOENT)
    reiserfs_error(inode->i_sb, "clm-6001",
            "grab_tail_page failed %d",
            error);
   page = ((void*)0);
   bh = ((void*)0);
  }
 }
 error = journal_begin(&th, inode->i_sb,
         JOURNAL_PER_BALANCE_CNT * 2 + 1);
 if (error)
  goto out;
 reiserfs_update_inode_transaction(inode);
 if (update_timestamps)






  add_save_link(&th, inode, 1);
 err2 = reiserfs_do_truncate(&th, inode, page, update_timestamps);
 error = journal_end(&th);
 if (error)
  goto out;


 if (err2) {
  error = err2;
    goto out;
 }

 if (update_timestamps) {
  error = remove_save_link(inode, 1 );
  if (error)
   goto out;
 }

 if (page) {
  length = offset & (blocksize - 1);

  if (length) {
   length = blocksize - length;
   zero_user(page, offset, length);
   if (buffer_mapped(bh) && bh->b_blocknr != 0) {
    mark_buffer_dirty(bh);
   }
  }
  unlock_page(page);
  put_page(page);
 }

 reiserfs_write_unlock(inode->i_sb);

 return 0;
out:
 if (page) {
  unlock_page(page);
  put_page(page);
 }

 reiserfs_write_unlock(inode->i_sb);

 return error;
}
