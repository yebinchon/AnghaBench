
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __forget_cached_acl (int ) ;
 int acl_by_type (struct inode*,int) ;

void forget_cached_acl(struct inode *inode, int type)
{
 __forget_cached_acl(acl_by_type(inode, type));
}
