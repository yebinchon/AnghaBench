
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int ext4_dirblock_csum_set (struct inode*,struct buffer_head*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;

int ext4_handle_dirty_dirblock(handle_t *handle,
          struct inode *inode,
          struct buffer_head *bh)
{
 ext4_dirblock_csum_set(inode, bh);
 return ext4_handle_dirty_metadata(handle, inode, bh);
}
