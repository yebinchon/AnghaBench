
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dst; } ;
struct fib_nh_common {int nhc_pcpu_rth_output; int nhc_rth_input; } ;


 struct rtable* cmpxchg (struct rtable**,struct rtable*,struct rtable*) ;
 int dst_hold (int *) ;
 int dst_release (int *) ;
 scalar_t__ raw_cpu_ptr (int ) ;
 int rt_add_uncached_list (struct rtable*) ;
 scalar_t__ rt_is_input_route (struct rtable*) ;

__attribute__((used)) static bool rt_cache_route(struct fib_nh_common *nhc, struct rtable *rt)
{
 struct rtable *orig, *prev, **p;
 bool ret = 1;

 if (rt_is_input_route(rt)) {
  p = (struct rtable **)&nhc->nhc_rth_input;
 } else {
  p = (struct rtable **)raw_cpu_ptr(nhc->nhc_pcpu_rth_output);
 }
 orig = *p;




 dst_hold(&rt->dst);
 prev = cmpxchg(p, orig, rt);
 if (prev == orig) {
  if (orig) {
   rt_add_uncached_list(orig);
   dst_release(&orig->dst);
  }
 } else {
  dst_release(&rt->dst);
  ret = 0;
 }

 return ret;
}
