
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_del_cached_rt_arg {struct fib6_info* f6i; struct fib6_config* cfg; } ;
struct fib6_info {int nh; } ;
struct fib6_config {int dummy; } ;


 int fib6_nh_del_cached_rt ;
 int nexthop_for_each_fib6_nh (int ,int ,struct fib6_nh_del_cached_rt_arg*) ;

__attribute__((used)) static int ip6_del_cached_rt_nh(struct fib6_config *cfg, struct fib6_info *f6i)
{
 struct fib6_nh_del_cached_rt_arg arg = {
  .cfg = cfg,
  .f6i = f6i
 };

 return nexthop_for_each_fib6_nh(f6i->nh, fib6_nh_del_cached_rt, &arg);
}
