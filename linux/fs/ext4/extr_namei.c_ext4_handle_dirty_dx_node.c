
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_dir_entry {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int ext4_dx_csum_set (struct inode*,struct ext4_dir_entry*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;

__attribute__((used)) static inline int ext4_handle_dirty_dx_node(handle_t *handle,
         struct inode *inode,
         struct buffer_head *bh)
{
 ext4_dx_csum_set(inode, (struct ext4_dir_entry *)bh->b_data);
 return ext4_handle_dirty_metadata(handle, inode, bh);
}
