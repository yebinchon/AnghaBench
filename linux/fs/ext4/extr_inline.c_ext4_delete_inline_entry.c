
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct ext4_iloc {int bh; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ i_block; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int ENOENT ;
 long EXT4_INLINE_DOTDOT_SIZE ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int brelse (int ) ;
 int ext4_generic_delete_entry (int *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,void*,int,int ) ;
 int ext4_get_inline_size (struct inode*) ;
 void* ext4_get_inline_xattr_pos (struct inode*,struct ext4_iloc*) ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 int ext4_has_inline_data (struct inode*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 TYPE_1__* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_show_inline_dir (struct inode*,int ,void*,int) ;
 int ext4_std_error (int ,int) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;
 scalar_t__ likely (int) ;

int ext4_delete_inline_entry(handle_t *handle,
        struct inode *dir,
        struct ext4_dir_entry_2 *de_del,
        struct buffer_head *bh,
        int *has_inline_data)
{
 int err, inline_size, no_expand;
 struct ext4_iloc iloc;
 void *inline_start;

 err = ext4_get_inode_loc(dir, &iloc);
 if (err)
  return err;

 ext4_write_lock_xattr(dir, &no_expand);
 if (!ext4_has_inline_data(dir)) {
  *has_inline_data = 0;
  goto out;
 }

 if ((void *)de_del - ((void *)ext4_raw_inode(&iloc)->i_block) <
  EXT4_MIN_INLINE_DATA_SIZE) {
  inline_start = (void *)ext4_raw_inode(&iloc)->i_block +
     EXT4_INLINE_DOTDOT_SIZE;
  inline_size = EXT4_MIN_INLINE_DATA_SIZE -
    EXT4_INLINE_DOTDOT_SIZE;
 } else {
  inline_start = ext4_get_inline_xattr_pos(dir, &iloc);
  inline_size = ext4_get_inline_size(dir) -
    EXT4_MIN_INLINE_DATA_SIZE;
 }

 BUFFER_TRACE(bh, "get_write_access");
 err = ext4_journal_get_write_access(handle, bh);
 if (err)
  goto out;

 err = ext4_generic_delete_entry(handle, dir, de_del, bh,
     inline_start, inline_size, 0);
 if (err)
  goto out;

 ext4_show_inline_dir(dir, iloc.bh, inline_start, inline_size);
out:
 ext4_write_unlock_xattr(dir, &no_expand);
 if (likely(err == 0))
  err = ext4_mark_inode_dirty(handle, dir);
 brelse(iloc.bh);
 if (err != -ENOENT)
  ext4_std_error(dir->i_sb, err);
 return err;
}
