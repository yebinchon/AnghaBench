
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 struct inode* d_inode (struct dentry*) ;
 int nfs3_list_one_acl (struct inode*,int ,int ,char*,size_t,int*) ;

ssize_t
nfs3_listxattr(struct dentry *dentry, char *data, size_t size)
{
 struct inode *inode = d_inode(dentry);
 ssize_t result = 0;
 int error;

 error = nfs3_list_one_acl(inode, ACL_TYPE_ACCESS,
   XATTR_NAME_POSIX_ACL_ACCESS, data, size, &result);
 if (error)
  return error;

 error = nfs3_list_one_acl(inode, ACL_TYPE_DEFAULT,
   XATTR_NAME_POSIX_ACL_DEFAULT, data, size, &result);
 if (error)
  return error;
 return result;
}
