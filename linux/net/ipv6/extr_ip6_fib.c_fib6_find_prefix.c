
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fib6_node* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_table {int tb6_lock; } ;
struct fib6_node {int fn_flags; int leaf; int right; int left; } ;
struct fib6_info {int fn_flags; int leaf; int right; int left; } ;


 struct fib6_node* FIB6_SUBTREE (struct fib6_node*) ;
 int RTN_ROOT ;
 int lockdep_is_held (int *) ;
 struct fib6_node* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static struct fib6_info *fib6_find_prefix(struct net *net,
      struct fib6_table *table,
      struct fib6_node *fn)
{
 struct fib6_node *child_left, *child_right;

 if (fn->fn_flags & RTN_ROOT)
  return net->ipv6.fib6_null_entry;

 while (fn) {
  child_left = rcu_dereference_protected(fn->left,
        lockdep_is_held(&table->tb6_lock));
  child_right = rcu_dereference_protected(fn->right,
        lockdep_is_held(&table->tb6_lock));
  if (child_left)
   return rcu_dereference_protected(child_left->leaf,
     lockdep_is_held(&table->tb6_lock));
  if (child_right)
   return rcu_dereference_protected(child_right->leaf,
     lockdep_is_held(&table->tb6_lock));

  fn = FIB6_SUBTREE(fn);
 }
 return ((void*)0);
}
