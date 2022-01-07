
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_inline_size; int i_disksize; } ;


 int ENOSPC ;
 int EXT4_DIR_REC_LEN (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int ext4_get_inline_xattr_pos (struct inode*,struct ext4_iloc*) ;
 int ext4_update_final_de (int ,int,int) ;
 int ext4_update_inline_data (int *,struct inode*,int) ;
 int get_max_inline_xattr_value_size (struct inode*,struct ext4_iloc*) ;

__attribute__((used)) static int ext4_update_inline_dir(handle_t *handle, struct inode *dir,
      struct ext4_iloc *iloc)
{
 int ret;
 int old_size = EXT4_I(dir)->i_inline_size - EXT4_MIN_INLINE_DATA_SIZE;
 int new_size = get_max_inline_xattr_value_size(dir, iloc);

 if (new_size - old_size <= EXT4_DIR_REC_LEN(1))
  return -ENOSPC;

 ret = ext4_update_inline_data(handle, dir,
          new_size + EXT4_MIN_INLINE_DATA_SIZE);
 if (ret)
  return ret;

 ext4_update_final_de(ext4_get_inline_xattr_pos(dir, iloc), old_size,
        EXT4_I(dir)->i_inline_size -
      EXT4_MIN_INLINE_DATA_SIZE);
 dir->i_size = EXT4_I(dir)->i_disksize = EXT4_I(dir)->i_inline_size;
 return 0;
}
