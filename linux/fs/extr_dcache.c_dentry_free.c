
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct external_name {TYPE_2__ u; } ;
struct TYPE_3__ {int d_rcu; int d_alias; } ;
struct dentry {int d_flags; TYPE_1__ d_u; } ;


 int DCACHE_NORCU ;
 int WARN_ON (int) ;
 int __d_free (int *) ;
 int __d_free_external (int *) ;
 int atomic_dec_and_test (int *) ;
 int call_rcu (int *,int (*) (int *)) ;
 int dname_external (struct dentry*) ;
 struct external_name* external_name (struct dentry*) ;
 int hlist_unhashed (int *) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dentry_free(struct dentry *dentry)
{
 WARN_ON(!hlist_unhashed(&dentry->d_u.d_alias));
 if (unlikely(dname_external(dentry))) {
  struct external_name *p = external_name(dentry);
  if (likely(atomic_dec_and_test(&p->u.count))) {
   call_rcu(&dentry->d_u.d_rcu, __d_free_external);
   return;
  }
 }

 if (dentry->d_flags & DCACHE_NORCU)
  __d_free(&dentry->d_u.d_rcu);
 else
  call_rcu(&dentry->d_u.d_rcu, __d_free);
}
