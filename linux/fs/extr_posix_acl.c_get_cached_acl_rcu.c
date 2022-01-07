
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int * acl_by_type (struct inode*,int) ;
 struct posix_acl* rcu_dereference (int ) ;

struct posix_acl *get_cached_acl_rcu(struct inode *inode, int type)
{
 return rcu_dereference(*acl_by_type(inode, type));
}
