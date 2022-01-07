
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_lock; int i_count; scalar_t__ i_nlink; } ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_DIRTY_TIME ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int atomic_inc (int *) ;
 int iput_final (struct inode*) ;
 int mark_inode_dirty_sync (struct inode*) ;
 int spin_unlock (int *) ;
 int trace_writeback_lazytime_iput (struct inode*) ;

void iput(struct inode *inode)
{
 if (!inode)
  return;
 BUG_ON(inode->i_state & I_CLEAR);
retry:
 if (atomic_dec_and_lock(&inode->i_count, &inode->i_lock)) {
  if (inode->i_nlink && (inode->i_state & I_DIRTY_TIME)) {
   atomic_inc(&inode->i_count);
   spin_unlock(&inode->i_lock);
   trace_writeback_lazytime_iput(inode);
   mark_inode_dirty_sync(inode);
   goto retry;
  }
  iput_final(inode);
 }
}
