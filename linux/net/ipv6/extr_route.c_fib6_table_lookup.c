
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct flowi6 {int flowi6_flags; int saddr; int daddr; } ;
struct fib6_table {int tb6_root; } ;
struct fib6_result {scalar_t__ f6i; } ;
struct fib6_node {int dummy; } ;


 int FLOWI_FLAG_SKIP_NH_OIF ;
 int RT6_LOOKUP_F_REACHABLE ;
 struct fib6_node* fib6_backtrack (struct fib6_node*,int *) ;
 struct fib6_node* fib6_node_lookup (int *,int *,int *) ;
 int rt6_select (struct net*,struct fib6_node*,int,struct fib6_result*,int) ;
 int trace_fib6_table_lookup (struct net*,struct fib6_result*,struct fib6_table*,struct flowi6*) ;

int fib6_table_lookup(struct net *net, struct fib6_table *table, int oif,
        struct flowi6 *fl6, struct fib6_result *res, int strict)
{
 struct fib6_node *fn, *saved_fn;

 fn = fib6_node_lookup(&table->tb6_root, &fl6->daddr, &fl6->saddr);
 saved_fn = fn;

 if (fl6->flowi6_flags & FLOWI_FLAG_SKIP_NH_OIF)
  oif = 0;

redo_rt6_select:
 rt6_select(net, fn, oif, res, strict);
 if (res->f6i == net->ipv6.fib6_null_entry) {
  fn = fib6_backtrack(fn, &fl6->saddr);
  if (fn)
   goto redo_rt6_select;
  else if (strict & RT6_LOOKUP_F_REACHABLE) {

   strict &= ~RT6_LOOKUP_F_REACHABLE;
   fn = saved_fn;
   goto redo_rt6_select;
  }
 }

 trace_fib6_table_lookup(net, res, table, fl6);

 return 0;
}
