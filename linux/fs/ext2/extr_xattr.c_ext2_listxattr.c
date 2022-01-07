
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int ext2_xattr_list (struct dentry*,char*,size_t) ;

ssize_t
ext2_listxattr(struct dentry *dentry, char *buffer, size_t size)
{
 return ext2_xattr_list(dentry, buffer, size);
}
