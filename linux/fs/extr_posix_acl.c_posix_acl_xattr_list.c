
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int IS_POSIXACL (int ) ;
 int d_backing_inode (struct dentry*) ;

__attribute__((used)) static bool
posix_acl_xattr_list(struct dentry *dentry)
{
 return IS_POSIXACL(d_backing_inode(dentry));
}
