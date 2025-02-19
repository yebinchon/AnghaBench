
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct fib6_node {int fn_sernum; } ;
struct fib6_info {TYPE_1__* fib6_table; int fib6_node; } ;
struct TYPE_2__ {int tb6_lock; } ;


 int fib6_new_sernum (struct net*) ;
 int lockdep_is_held (int *) ;
 struct fib6_node* rcu_dereference_protected (int ,int ) ;

void fib6_update_sernum(struct net *net, struct fib6_info *f6i)
{
 struct fib6_node *fn;

 fn = rcu_dereference_protected(f6i->fib6_node,
   lockdep_is_held(&f6i->fib6_table->tb6_lock));
 if (fn)
  fn->fn_sernum = fib6_new_sernum(net);
}
