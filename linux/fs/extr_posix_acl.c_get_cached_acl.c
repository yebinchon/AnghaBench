
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_refcount; } ;
struct inode {int dummy; } ;


 struct posix_acl** acl_by_type (struct inode*,int) ;
 int cpu_relax () ;
 scalar_t__ is_uncached_acl (struct posix_acl*) ;
 struct posix_acl* rcu_dereference (struct posix_acl*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ refcount_inc_not_zero (int *) ;

struct posix_acl *get_cached_acl(struct inode *inode, int type)
{
 struct posix_acl **p = acl_by_type(inode, type);
 struct posix_acl *acl;

 for (;;) {
  rcu_read_lock();
  acl = rcu_dereference(*p);
  if (!acl || is_uncached_acl(acl) ||
      refcount_inc_not_zero(&acl->a_refcount))
   break;
  rcu_read_unlock();
  cpu_relax();
 }
 rcu_read_unlock();
 return acl;
}
