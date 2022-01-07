
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_info {scalar_t__ should_flush; int fib6_nsiblings; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 struct fib6_info* rt6_multipath_first_sibling (struct fib6_info*) ;
 int rt6_multipath_total_weight (struct fib6_info*) ;
 int rt6_multipath_upper_bound_set (struct fib6_info*,int) ;

void rt6_multipath_rebalance(struct fib6_info *rt)
{
 struct fib6_info *first;
 int total;





 if (!rt->fib6_nsiblings || rt->should_flush)
  return;





 first = rt6_multipath_first_sibling(rt);
 if (WARN_ON_ONCE(!first))
  return;

 total = rt6_multipath_total_weight(first);
 rt6_multipath_upper_bound_set(first, total);
}
