
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int rcu; int refcount; } ;


 int call_rcu (int *,void (*) (struct rcu_head*)) ;
 int refcount_dec_and_test (int *) ;

void ipc_rcu_putref(struct kern_ipc_perm *ptr,
   void (*func)(struct rcu_head *head))
{
 if (!refcount_dec_and_test(&ptr->refcount))
  return;

 call_rcu(&ptr->rcu, func);
}
