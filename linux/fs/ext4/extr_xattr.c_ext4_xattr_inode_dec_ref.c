
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;


 int ext4_xattr_inode_update_ref (int *,struct inode*,int) ;

__attribute__((used)) static int ext4_xattr_inode_dec_ref(handle_t *handle, struct inode *ea_inode)
{
 return ext4_xattr_inode_update_ref(handle, ea_inode, -1);
}
