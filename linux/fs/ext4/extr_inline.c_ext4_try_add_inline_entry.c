
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_iloc {int bh; } ;
struct ext4_filename {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {int i_inline_size; } ;
struct TYPE_3__ {scalar_t__ i_block; } ;


 int ENOSPC ;
 TYPE_2__* EXT4_I (struct inode*) ;
 int EXT4_INLINE_DOTDOT_SIZE ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int brelse (int ) ;
 int ext4_add_dirent_to_inline (int *,struct ext4_filename*,struct inode*,struct inode*,struct ext4_iloc*,void*,int) ;
 int ext4_convert_inline_data_nolock (int *,struct inode*,struct ext4_iloc*) ;
 void* ext4_get_inline_xattr_pos (struct inode*,struct ext4_iloc*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 TYPE_1__* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_update_inline_dir (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;

int ext4_try_add_inline_entry(handle_t *handle, struct ext4_filename *fname,
         struct inode *dir, struct inode *inode)
{
 int ret, inline_size, no_expand;
 void *inline_start;
 struct ext4_iloc iloc;

 ret = ext4_get_inode_loc(dir, &iloc);
 if (ret)
  return ret;

 ext4_write_lock_xattr(dir, &no_expand);
 if (!ext4_has_inline_data(dir))
  goto out;

 inline_start = (void *)ext4_raw_inode(&iloc)->i_block +
       EXT4_INLINE_DOTDOT_SIZE;
 inline_size = EXT4_MIN_INLINE_DATA_SIZE - EXT4_INLINE_DOTDOT_SIZE;

 ret = ext4_add_dirent_to_inline(handle, fname, dir, inode, &iloc,
     inline_start, inline_size);
 if (ret != -ENOSPC)
  goto out;


 inline_size = EXT4_I(dir)->i_inline_size -
   EXT4_MIN_INLINE_DATA_SIZE;
 if (!inline_size) {

  ret = ext4_update_inline_dir(handle, dir, &iloc);
  if (ret && ret != -ENOSPC)
   goto out;

  inline_size = EXT4_I(dir)->i_inline_size -
    EXT4_MIN_INLINE_DATA_SIZE;
 }

 if (inline_size) {
  inline_start = ext4_get_inline_xattr_pos(dir, &iloc);

  ret = ext4_add_dirent_to_inline(handle, fname, dir,
      inode, &iloc, inline_start,
      inline_size);

  if (ret != -ENOSPC)
   goto out;
 }






 ret = ext4_convert_inline_data_nolock(handle, dir, &iloc);

out:
 ext4_write_unlock_xattr(dir, &no_expand);
 ext4_mark_inode_dirty(handle, dir);
 brelse(iloc.bh);
 return ret;
}
