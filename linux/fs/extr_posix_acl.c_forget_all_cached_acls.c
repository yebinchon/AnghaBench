
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_default_acl; int i_acl; } ;


 int __forget_cached_acl (int *) ;

void forget_all_cached_acls(struct inode *inode)
{
 __forget_cached_acl(&inode->i_acl);
 __forget_cached_acl(&inode->i_default_acl);
}
