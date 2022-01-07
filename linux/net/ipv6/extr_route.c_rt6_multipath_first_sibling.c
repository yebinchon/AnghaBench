
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib6_node {int leaf; } ;
struct fib6_info {scalar_t__ fib6_metric; TYPE_1__* fib6_table; int fib6_next; int fib6_node; } ;
struct TYPE_2__ {int tb6_lock; } ;


 int lockdep_is_held (int *) ;
 void* rcu_dereference_protected (int ,int ) ;
 scalar_t__ rt6_qualify_for_ecmp (struct fib6_info*) ;

__attribute__((used)) static struct fib6_info *rt6_multipath_first_sibling(const struct fib6_info *rt)
{
 struct fib6_info *iter;
 struct fib6_node *fn;

 fn = rcu_dereference_protected(rt->fib6_node,
   lockdep_is_held(&rt->fib6_table->tb6_lock));
 iter = rcu_dereference_protected(fn->leaf,
   lockdep_is_held(&rt->fib6_table->tb6_lock));
 while (iter) {
  if (iter->fib6_metric == rt->fib6_metric &&
      rt6_qualify_for_ecmp(iter))
   return iter;
  iter = rcu_dereference_protected(iter->fib6_next,
    lockdep_is_held(&rt->fib6_table->tb6_lock));
 }

 return ((void*)0);
}
