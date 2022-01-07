
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int flags; } ;


 int EROFS ;
 int PF_MEMALLOC ;
 scalar_t__ WB_SYNC_ALL ;
 TYPE_1__* current ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end_sync (struct reiserfs_transaction_handle*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 scalar_t__ sb_rdonly (int ) ;

int reiserfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct reiserfs_transaction_handle th;
 int jbegin_count = 1;

 if (sb_rdonly(inode->i_sb))
  return -EROFS;







 if (wbc->sync_mode == WB_SYNC_ALL && !(current->flags & PF_MEMALLOC)) {
  reiserfs_write_lock(inode->i_sb);
  if (!journal_begin(&th, inode->i_sb, jbegin_count)) {
   reiserfs_update_sd(&th, inode);
   journal_end_sync(&th);
  }
  reiserfs_write_unlock(inode->i_sb);
 }
 return 0;
}
