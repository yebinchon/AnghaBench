
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct migrate_struct {int first_pblock; scalar_t__ first_block; scalar_t__ last_block; } ;
struct inode {int dummy; } ;
struct ext4_extent {int ee_len; int ee_block; } ;
struct ext4_ext_path {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_data_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_RESERVE_TRANS_BLOCKS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (scalar_t__) ;
 int down_write (int *) ;
 int ext4_ext_calc_credits_for_single_extent (struct inode*,scalar_t__,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_insert_extent (int *,struct inode*,struct ext4_ext_path**,struct ext4_extent*,int ) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,scalar_t__,int *,int ) ;
 scalar_t__ ext4_handle_has_enough_credits (int *,int ) ;
 int ext4_journal_extend (int *,int) ;
 int ext4_journal_restart (int *,int) ;
 int kfree (struct ext4_ext_path*) ;
 int up_write (int *) ;

__attribute__((used)) static int finish_range(handle_t *handle, struct inode *inode,
    struct migrate_struct *lb)

{
 int retval = 0, needed;
 struct ext4_extent newext;
 struct ext4_ext_path *path;
 if (lb->first_pblock == 0)
  return 0;


 newext.ee_block = cpu_to_le32(lb->first_block);
 newext.ee_len = cpu_to_le16(lb->last_block - lb->first_block + 1);
 ext4_ext_store_pblock(&newext, lb->first_pblock);

 down_write(&EXT4_I(inode)->i_data_sem);
 path = ext4_find_extent(inode, lb->first_block, ((void*)0), 0);
 if (IS_ERR(path)) {
  retval = PTR_ERR(path);
  path = ((void*)0);
  goto err_out;
 }







 needed = ext4_ext_calc_credits_for_single_extent(inode,
      lb->last_block - lb->first_block + 1, path);




 if (needed && ext4_handle_has_enough_credits(handle,
      EXT4_RESERVE_TRANS_BLOCKS)) {
  up_write((&EXT4_I(inode)->i_data_sem));
  retval = ext4_journal_restart(handle, needed);
  down_write((&EXT4_I(inode)->i_data_sem));
  if (retval)
   goto err_out;
 } else if (needed) {
  retval = ext4_journal_extend(handle, needed);
  if (retval) {



   up_write((&EXT4_I(inode)->i_data_sem));
   retval = ext4_journal_restart(handle, needed);
   down_write((&EXT4_I(inode)->i_data_sem));
   if (retval)
    goto err_out;
  }
 }
 retval = ext4_ext_insert_extent(handle, inode, &path, &newext, 0);
err_out:
 up_write((&EXT4_I(inode)->i_data_sem));
 ext4_ext_drop_refs(path);
 kfree(path);
 lb->first_pblock = 0;
 return retval;
}
