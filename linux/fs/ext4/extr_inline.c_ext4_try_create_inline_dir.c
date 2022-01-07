
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_size; int i_ino; } ;
struct ext4_iloc {int bh; } ;
struct ext4_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
typedef int handle_t ;
struct TYPE_4__ {int i_disksize; } ;
struct TYPE_3__ {scalar_t__ i_block; } ;


 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_INLINE_DOTDOT_SIZE ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int brelse (int ) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_prepare_inline_data (int *,struct inode*,int) ;
 TYPE_1__* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_rec_len_to_disk (int,int) ;
 int set_nlink (struct inode*,int) ;

int ext4_try_create_inline_dir(handle_t *handle, struct inode *parent,
          struct inode *inode)
{
 int ret, inline_size = EXT4_MIN_INLINE_DATA_SIZE;
 struct ext4_iloc iloc;
 struct ext4_dir_entry_2 *de;

 ret = ext4_get_inode_loc(inode, &iloc);
 if (ret)
  return ret;

 ret = ext4_prepare_inline_data(handle, inode, inline_size);
 if (ret)
  goto out;





 de = (struct ext4_dir_entry_2 *)ext4_raw_inode(&iloc)->i_block;
 de->inode = cpu_to_le32(parent->i_ino);
 de = (struct ext4_dir_entry_2 *)((void *)de + EXT4_INLINE_DOTDOT_SIZE);
 de->inode = 0;
 de->rec_len = ext4_rec_len_to_disk(
    inline_size - EXT4_INLINE_DOTDOT_SIZE,
    inline_size);
 set_nlink(inode, 2);
 inode->i_size = EXT4_I(inode)->i_disksize = inline_size;
out:
 brelse(iloc.bh);
 return ret;
}
