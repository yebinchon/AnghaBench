
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct fib6_node {int fn_flags; int parent; } ;


 struct fib6_node* FIB6_SUBTREE (struct fib6_node*) ;
 int RTN_RTINFO ;
 int RTN_TL_ROOT ;
 struct fib6_node* fib6_node_lookup (struct fib6_node*,int *,struct in6_addr*) ;
 struct fib6_node* rcu_dereference (int ) ;

__attribute__((used)) static struct fib6_node* fib6_backtrack(struct fib6_node *fn,
     struct in6_addr *saddr)
{
 struct fib6_node *pn, *sn;
 while (1) {
  if (fn->fn_flags & RTN_TL_ROOT)
   return ((void*)0);
  pn = rcu_dereference(fn->parent);
  sn = FIB6_SUBTREE(pn);
  if (sn && sn != fn)
   fn = fib6_node_lookup(sn, ((void*)0), saddr);
  else
   fn = pn;
  if (fn->fn_flags & RTN_RTINFO)
   return fn;
 }
}
