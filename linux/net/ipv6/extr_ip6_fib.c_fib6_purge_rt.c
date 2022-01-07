
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib6_table {int tb6_lock; } ;
struct fib6_node {int fn_flags; int parent; int leaf; } ;
struct fib6_info {int fib6_ref; int nh_list; scalar_t__ nh; struct fib6_table* fib6_table; } ;


 int RTN_RTINFO ;
 int fib6_drop_pcpu_from (struct fib6_info*,struct fib6_table*) ;
 struct fib6_info* fib6_find_prefix (struct net*,struct fib6_table*,struct fib6_node*) ;
 int fib6_info_hold (struct fib6_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct fib6_info*) ;
 void* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;

__attribute__((used)) static void fib6_purge_rt(struct fib6_info *rt, struct fib6_node *fn,
     struct net *net)
{
 struct fib6_table *table = rt->fib6_table;

 fib6_drop_pcpu_from(rt, table);

 if (rt->nh && !list_empty(&rt->nh_list))
  list_del_init(&rt->nh_list);

 if (refcount_read(&rt->fib6_ref) != 1) {






  while (fn) {
   struct fib6_info *leaf = rcu_dereference_protected(fn->leaf,
         lockdep_is_held(&table->tb6_lock));
   struct fib6_info *new_leaf;
   if (!(fn->fn_flags & RTN_RTINFO) && leaf == rt) {
    new_leaf = fib6_find_prefix(net, table, fn);
    fib6_info_hold(new_leaf);

    rcu_assign_pointer(fn->leaf, new_leaf);
    fib6_info_release(rt);
   }
   fn = rcu_dereference_protected(fn->parent,
        lockdep_is_held(&table->tb6_lock));
  }
 }
}
