
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_ctime; int i_mode; } ;


 int ACL_TYPE_ACCESS ;
 int current_time (struct inode*) ;
 int posix_acl_update_mode (struct inode*,int *,struct posix_acl**) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

int simple_set_acl(struct inode *inode, struct posix_acl *acl, int type)
{
 int error;

 if (type == ACL_TYPE_ACCESS) {
  error = posix_acl_update_mode(inode,
    &inode->i_mode, &acl);
  if (error)
   return error;
 }

 inode->i_ctime = current_time(inode);
 set_cached_acl(inode, type, acl);
 return 0;
}
