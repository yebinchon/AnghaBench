
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_mapping; } ;
struct ext4_sb_info {int s_journal_flag_rwsem; } ;
typedef int journal_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_mmap_sem; } ;


 int EROFS ;
 int EXT4_HT_INODE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_JOURNAL_DATA ;
 int * EXT4_JOURNAL (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int down_write (int *) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_set_aops (struct inode*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_std_error (int ,int) ;
 int filemap_write_and_wait (int ) ;
 int inode_dio_wait (struct inode*) ;
 scalar_t__ is_journal_aborted (int *) ;
 int jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int up_write (int *) ;

int ext4_change_inode_journal_flag(struct inode *inode, int val)
{
 journal_t *journal;
 handle_t *handle;
 int err;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 journal = EXT4_JOURNAL(inode);
 if (!journal)
  return 0;
 if (is_journal_aborted(journal))
  return -EROFS;


 inode_dio_wait(inode);
 if (val) {
  down_write(&EXT4_I(inode)->i_mmap_sem);
  err = filemap_write_and_wait(inode->i_mapping);
  if (err < 0) {
   up_write(&EXT4_I(inode)->i_mmap_sem);
   return err;
  }
 }

 percpu_down_write(&sbi->s_journal_flag_rwsem);
 jbd2_journal_lock_updates(journal);
 if (val)
  ext4_set_inode_flag(inode, EXT4_INODE_JOURNAL_DATA);
 else {
  err = jbd2_journal_flush(journal);
  if (err < 0) {
   jbd2_journal_unlock_updates(journal);
   percpu_up_write(&sbi->s_journal_flag_rwsem);
   return err;
  }
  ext4_clear_inode_flag(inode, EXT4_INODE_JOURNAL_DATA);
 }
 ext4_set_aops(inode);

 jbd2_journal_unlock_updates(journal);
 percpu_up_write(&sbi->s_journal_flag_rwsem);

 if (val)
  up_write(&EXT4_I(inode)->i_mmap_sem);



 handle = ext4_journal_start(inode, EXT4_HT_INODE, 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 err = ext4_mark_inode_dirty(handle, inode);
 ext4_handle_sync(handle);
 ext4_journal_stop(handle);
 ext4_std_error(inode->i_sb, err);

 return err;
}
