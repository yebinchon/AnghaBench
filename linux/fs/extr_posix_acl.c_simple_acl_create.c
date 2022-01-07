
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int posix_acl_create (struct inode*,int *,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;
 int set_cached_acl (struct inode*,int ,struct posix_acl*) ;

int simple_acl_create(struct inode *dir, struct inode *inode)
{
 struct posix_acl *default_acl, *acl;
 int error;

 error = posix_acl_create(dir, &inode->i_mode, &default_acl, &acl);
 if (error)
  return error;

 set_cached_acl(inode, ACL_TYPE_DEFAULT, default_acl);
 set_cached_acl(inode, ACL_TYPE_ACCESS, acl);

 if (default_acl)
  posix_acl_release(default_acl);
 if (acl)
  posix_acl_release(acl);
 return 0;
}
