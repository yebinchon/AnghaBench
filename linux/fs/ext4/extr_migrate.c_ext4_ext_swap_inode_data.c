
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; scalar_t__ i_blocks; } ;
struct ext4_inode_info {int i_data_sem; int * i_data; } ;
typedef int handle_t ;
typedef int __le32 ;


 int EAGAIN ;
 size_t EXT4_DIND_BLOCK ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 size_t EXT4_IND_BLOCK ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_STATE_EXT_MIGRATE ;
 size_t EXT4_TIND_BLOCK ;
 int down_write (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_journal_extend (int *,int) ;
 int ext4_journal_restart (int *,int) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_test_inode_state (struct inode*,int ) ;
 int free_ind_block (int *,struct inode*,int *) ;
 int memcpy (int *,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int ext4_ext_swap_inode_data(handle_t *handle, struct inode *inode,
      struct inode *tmp_inode)
{
 int retval;
 __le32 i_data[3];
 struct ext4_inode_info *ei = EXT4_I(inode);
 struct ext4_inode_info *tmp_ei = EXT4_I(tmp_inode);





 retval = ext4_journal_extend(handle, 1);
 if (retval) {
  retval = ext4_journal_restart(handle, 1);
  if (retval)
   goto err_out;
 }

 i_data[0] = ei->i_data[EXT4_IND_BLOCK];
 i_data[1] = ei->i_data[EXT4_DIND_BLOCK];
 i_data[2] = ei->i_data[EXT4_TIND_BLOCK];

 down_write(&EXT4_I(inode)->i_data_sem);





 if (!ext4_test_inode_state(inode, EXT4_STATE_EXT_MIGRATE)) {
  retval = -EAGAIN;
  up_write(&EXT4_I(inode)->i_data_sem);
  goto err_out;
 } else
  ext4_clear_inode_state(inode, EXT4_STATE_EXT_MIGRATE);




 ext4_set_inode_flag(inode, EXT4_INODE_EXTENTS);
 memcpy(ei->i_data, tmp_ei->i_data, sizeof(ei->i_data));
 spin_lock(&inode->i_lock);
 inode->i_blocks += tmp_inode->i_blocks;
 spin_unlock(&inode->i_lock);
 up_write(&EXT4_I(inode)->i_data_sem);





 retval = free_ind_block(handle, inode, i_data);
 ext4_mark_inode_dirty(handle, inode);

err_out:
 return retval;
}
