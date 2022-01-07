
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef int handle_t ;
struct TYPE_2__ {int i_data_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int WARN_ON (int) ;
 int __ext4_handle_dirty_metadata (char const*,unsigned int,int *,struct inode*,scalar_t__) ;
 int ext4_extent_block_csum_set (struct inode*,int ) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext_block_hdr (scalar_t__) ;
 int rwsem_is_locked (int *) ;

int __ext4_ext_dirty(const char *where, unsigned int line, handle_t *handle,
       struct inode *inode, struct ext4_ext_path *path)
{
 int err;

 WARN_ON(!rwsem_is_locked(&EXT4_I(inode)->i_data_sem));
 if (path->p_bh) {
  ext4_extent_block_csum_set(inode, ext_block_hdr(path->p_bh));

  err = __ext4_handle_dirty_metadata(where, line, handle,
         inode, path->p_bh);
 } else {

  err = ext4_mark_inode_dirty(handle, inode);
 }
 return err;
}
