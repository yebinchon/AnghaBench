
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct reiserfs_transaction_handle {int t_refcount; int t_trans_id; } ;
struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_7__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_6__ {int s_blocksize; } ;


 unsigned int AOP_FLAG_CONT_EXPAND ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_SHIFT ;
 int __block_write_begin (struct page*,int,unsigned int,int ) ;
 TYPE_5__* current ;
 int fix_tail_page_for_writing (struct page*) ;
 struct page* grab_cache_page_write_begin (struct address_space*,int,unsigned int) ;
 int put_page (struct page*) ;
 int reiserfs_end_persistent_transaction (struct reiserfs_transaction_handle*) ;
 int reiserfs_get_block ;
 scalar_t__ reiserfs_transaction_running (TYPE_1__*) ;
 int reiserfs_truncate_failed_write (struct inode*) ;
 int reiserfs_wait_on_write_block (TYPE_1__*) ;
 int reiserfs_write_lock (TYPE_1__*) ;
 int reiserfs_write_unlock (TYPE_1__*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int reiserfs_write_begin(struct file *file,
    struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata)
{
 struct inode *inode;
 struct page *page;
 pgoff_t index;
 int ret;
 int old_ref = 0;

  inode = mapping->host;
 *fsdata = ((void*)0);
  if (flags & AOP_FLAG_CONT_EXPAND &&
      (pos & (inode->i_sb->s_blocksize - 1)) == 0) {
   pos ++;
  *fsdata = (void *)(unsigned long)flags;
 }

 index = pos >> PAGE_SHIFT;
 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;
 *pagep = page;

 reiserfs_wait_on_write_block(inode->i_sb);
 fix_tail_page_for_writing(page);
 if (reiserfs_transaction_running(inode->i_sb)) {
  struct reiserfs_transaction_handle *th;
  th = (struct reiserfs_transaction_handle *)current->
      journal_info;
  BUG_ON(!th->t_refcount);
  BUG_ON(!th->t_trans_id);
  old_ref = th->t_refcount;
  th->t_refcount++;
 }
 ret = __block_write_begin(page, pos, len, reiserfs_get_block);
 if (ret && reiserfs_transaction_running(inode->i_sb)) {
  struct reiserfs_transaction_handle *th = current->journal_info;
  if (th->t_refcount > old_ref) {
   if (old_ref)
    th->t_refcount--;
   else {
    int err;
    reiserfs_write_lock(inode->i_sb);
    err = reiserfs_end_persistent_transaction(th);
    reiserfs_write_unlock(inode->i_sb);
    if (err)
     ret = err;
   }
  }
 }
 if (ret) {
  unlock_page(page);
  put_page(page);

  reiserfs_truncate_failed_write(inode);
 }
 return ret;
}
