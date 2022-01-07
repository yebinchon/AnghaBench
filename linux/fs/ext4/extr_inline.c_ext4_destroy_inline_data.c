
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 int ext4_destroy_inline_data_nolock (int *,struct inode*) ;
 int ext4_write_lock_xattr (struct inode*,int*) ;
 int ext4_write_unlock_xattr (struct inode*,int*) ;

int ext4_destroy_inline_data(handle_t *handle, struct inode *inode)
{
 int ret, no_expand;

 ext4_write_lock_xattr(inode, &no_expand);
 ret = ext4_destroy_inline_data_nolock(handle, inode);
 ext4_write_unlock_xattr(inode, &no_expand);

 return ret;
}
