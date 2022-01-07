
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;


 int EBUSY ;
 int ENOSPC ;
 int EOVERFLOW ;
 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 int EXT4_STATE_NO_EXPAND ;
 int __ext4_expand_extra_isize (struct inode*,unsigned int,struct ext4_iloc*,int *,int*) ;
 scalar_t__ ext4_handle_valid (int *) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_write_trylock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 scalar_t__ jbd2_journal_extend (int *,int ) ;

__attribute__((used)) static int ext4_try_to_expand_extra_isize(struct inode *inode,
       unsigned int new_extra_isize,
       struct ext4_iloc iloc,
       handle_t *handle)
{
 int no_expand;
 int error;

 if (ext4_test_inode_state(inode, EXT4_STATE_NO_EXPAND))
  return -EOVERFLOW;
 if (ext4_handle_valid(handle) &&
     jbd2_journal_extend(handle,
    EXT4_DATA_TRANS_BLOCKS(inode->i_sb)) != 0)
  return -ENOSPC;

 if (ext4_write_trylock_xattr(inode, &no_expand) == 0)
  return -EBUSY;

 error = __ext4_expand_extra_isize(inode, new_extra_isize, &iloc,
       handle, &no_expand);
 ext4_write_unlock_xattr(inode, &no_expand);

 return error;
}
