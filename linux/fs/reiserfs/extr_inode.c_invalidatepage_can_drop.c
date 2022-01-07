
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal {int j_dirty_buffers_lock; struct reiserfs_journal_list* j_current_jl; } ;
struct reiserfs_jh {struct reiserfs_journal_list* jl; } ;
struct inode {int i_sb; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;


 struct reiserfs_journal* SB_JOURNAL (int ) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_journal_dirty (struct buffer_head*) ;
 scalar_t__ buffer_journaled (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 scalar_t__ reiserfs_file_data_log (struct inode*) ;
 int reiserfs_free_jh (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int invalidatepage_can_drop(struct inode *inode, struct buffer_head *bh)
{
 int ret = 1;
 struct reiserfs_journal *j = SB_JOURNAL(inode->i_sb);

 lock_buffer(bh);
 spin_lock(&j->j_dirty_buffers_lock);
 if (!buffer_mapped(bh)) {
  goto free_jh;
 }




 if (reiserfs_file_data_log(inode)) {




  if (buffer_journaled(bh) || buffer_journal_dirty(bh)) {
   ret = 0;
  }
 } else if (buffer_dirty(bh)) {
  struct reiserfs_journal_list *jl;
  struct reiserfs_jh *jh = bh->b_private;
  if (jh && (jl = jh->jl)
      && jl != SB_JOURNAL(inode->i_sb)->j_current_jl)
   ret = 0;
 }
free_jh:
 if (ret && bh->b_private) {
  reiserfs_free_jh(bh);
 }
 spin_unlock(&j->j_dirty_buffers_lock);
 unlock_buffer(bh);
 return ret;
}
