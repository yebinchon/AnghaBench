
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib6_node {int fn_sernum; int parent; } ;
struct fib6_info {TYPE_1__* fib6_table; int fib6_node; } ;
struct TYPE_2__ {int tb6_lock; } ;


 int lockdep_is_held (int *) ;
 struct fib6_node* rcu_dereference_protected (int ,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void __fib6_update_sernum_upto_root(struct fib6_info *rt,
        int sernum)
{
 struct fib6_node *fn = rcu_dereference_protected(rt->fib6_node,
    lockdep_is_held(&rt->fib6_table->tb6_lock));


 smp_wmb();
 while (fn) {
  fn->fn_sernum = sernum;
  fn = rcu_dereference_protected(fn->parent,
    lockdep_is_held(&rt->fib6_table->tb6_lock));
 }
}
