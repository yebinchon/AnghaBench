
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int EAGAIN ;
 int ECHILD ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int MAY_NOT_BLOCK ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* get_acl (struct inode*,int ) ;
 struct posix_acl* get_cached_acl_rcu (struct inode*,int ) ;
 scalar_t__ is_uncached_acl (struct posix_acl*) ;
 int posix_acl_permission (struct inode*,struct posix_acl*,int) ;
 int posix_acl_release (struct posix_acl*) ;

__attribute__((used)) static int check_acl(struct inode *inode, int mask)
{
 return -EAGAIN;
}
