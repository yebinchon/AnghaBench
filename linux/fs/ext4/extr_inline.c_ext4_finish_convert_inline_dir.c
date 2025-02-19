
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; scalar_t__ i_size; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int inode; } ;
struct buffer_head {void* b_data; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ i_disksize; } ;
struct TYPE_3__ {scalar_t__ s_blocksize; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_INLINE_DOTDOT_SIZE ;
 int ext4_handle_dirty_dirblock (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_has_metadata_csum (TYPE_1__*) ;
 struct ext4_dir_entry_2* ext4_init_dot_dotdot (struct inode*,struct ext4_dir_entry_2*,scalar_t__,int,int ,int) ;
 int ext4_initialize_dirent_tail (struct buffer_head*,scalar_t__) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_update_final_de (void*,int,scalar_t__) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int set_buffer_verified (struct buffer_head*) ;

__attribute__((used)) static int ext4_finish_convert_inline_dir(handle_t *handle,
       struct inode *inode,
       struct buffer_head *dir_block,
       void *buf,
       int inline_size)
{
 int err, csum_size = 0, header_size = 0;
 struct ext4_dir_entry_2 *de;
 void *target = dir_block->b_data;





 de = (struct ext4_dir_entry_2 *)target;
 de = ext4_init_dot_dotdot(inode, de,
  inode->i_sb->s_blocksize, csum_size,
  le32_to_cpu(((struct ext4_dir_entry_2 *)buf)->inode), 1);
 header_size = (void *)de - target;

 memcpy((void *)de, buf + EXT4_INLINE_DOTDOT_SIZE,
  inline_size - EXT4_INLINE_DOTDOT_SIZE);

 if (ext4_has_metadata_csum(inode->i_sb))
  csum_size = sizeof(struct ext4_dir_entry_tail);

 inode->i_size = inode->i_sb->s_blocksize;
 i_size_write(inode, inode->i_sb->s_blocksize);
 EXT4_I(inode)->i_disksize = inode->i_sb->s_blocksize;
 ext4_update_final_de(dir_block->b_data,
   inline_size - EXT4_INLINE_DOTDOT_SIZE + header_size,
   inode->i_sb->s_blocksize - csum_size);

 if (csum_size)
  ext4_initialize_dirent_tail(dir_block,
         inode->i_sb->s_blocksize);
 set_buffer_uptodate(dir_block);
 err = ext4_handle_dirty_dirblock(handle, inode, dir_block);
 if (err)
  return err;
 set_buffer_verified(dir_block);
 return ext4_mark_inode_dirty(handle, inode);
}
