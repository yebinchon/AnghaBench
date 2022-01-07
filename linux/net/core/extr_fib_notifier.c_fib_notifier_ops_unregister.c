
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_notifier_ops {int list; } ;


 int kfree_rcu (struct fib_notifier_ops*,int ) ;
 int list_del_rcu (int *) ;
 int rcu ;

void fib_notifier_ops_unregister(struct fib_notifier_ops *ops)
{
 list_del_rcu(&ops->list);
 kfree_rcu(ops, rcu);
}
