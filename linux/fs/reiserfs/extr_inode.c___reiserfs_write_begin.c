
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reiserfs_transaction_handle {int t_refcount; int t_trans_id; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct TYPE_4__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int __block_write_begin (struct page*,unsigned int,unsigned int,int ) ;
 TYPE_2__* current ;
 int fix_tail_page_for_writing (struct page*) ;
 int reiserfs_end_persistent_transaction (struct reiserfs_transaction_handle*) ;
 int reiserfs_get_block ;
 scalar_t__ reiserfs_transaction_running (int ) ;
 int reiserfs_wait_on_write_block (int ) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_lock_nested (int ,int) ;
 int reiserfs_write_unlock (int ) ;
 int reiserfs_write_unlock_nested (int ) ;

int __reiserfs_write_begin(struct page *page, unsigned from, unsigned len)
{
 struct inode *inode = page->mapping->host;
 int ret;
 int old_ref = 0;
 int depth;

 depth = reiserfs_write_unlock_nested(inode->i_sb);
 reiserfs_wait_on_write_block(inode->i_sb);
 reiserfs_write_lock_nested(inode->i_sb, depth);

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

 ret = __block_write_begin(page, from, len, reiserfs_get_block);
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
 return ret;

}
