
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; scalar_t__ i_size; TYPE_1__* i_sb; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int ENOSPC ;
 int EXT4_STATE_MAY_INLINE_DATA ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext4_append (int *,struct inode*,int *) ;
 int ext4_handle_dirty_dirblock (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_has_metadata_csum (TYPE_1__*) ;
 int ext4_init_dot_dotdot (struct inode*,struct ext4_dir_entry_2*,unsigned int,int,int ,int ) ;
 int ext4_initialize_dirent_tail (struct buffer_head*,unsigned int) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_try_create_inline_dir (int *,struct inode*,struct inode*) ;
 int set_buffer_verified (struct buffer_head*) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int ext4_init_new_dir(handle_t *handle, struct inode *dir,
        struct inode *inode)
{
 struct buffer_head *dir_block = ((void*)0);
 struct ext4_dir_entry_2 *de;
 ext4_lblk_t block = 0;
 unsigned int blocksize = dir->i_sb->s_blocksize;
 int csum_size = 0;
 int err;

 if (ext4_has_metadata_csum(dir->i_sb))
  csum_size = sizeof(struct ext4_dir_entry_tail);

 if (ext4_test_inode_state(inode, EXT4_STATE_MAY_INLINE_DATA)) {
  err = ext4_try_create_inline_dir(handle, dir, inode);
  if (err < 0 && err != -ENOSPC)
   goto out;
  if (!err)
   goto out;
 }

 inode->i_size = 0;
 dir_block = ext4_append(handle, inode, &block);
 if (IS_ERR(dir_block))
  return PTR_ERR(dir_block);
 de = (struct ext4_dir_entry_2 *)dir_block->b_data;
 ext4_init_dot_dotdot(inode, de, blocksize, csum_size, dir->i_ino, 0);
 set_nlink(inode, 2);
 if (csum_size)
  ext4_initialize_dirent_tail(dir_block, blocksize);

 BUFFER_TRACE(dir_block, "call ext4_handle_dirty_metadata");
 err = ext4_handle_dirty_dirblock(handle, inode, dir_block);
 if (err)
  goto out;
 set_buffer_verified(dir_block);
out:
 brelse(dir_block);
 return err;
}
