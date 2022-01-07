
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
struct rt6_info {int rt6i_flags; int rt6i_gateway; TYPE_1__ dst; int from; } ;
struct fib6_nh_match_arg {struct fib6_nh* match; int * gw; int dev; } ;
struct fib6_nh {int dummy; } ;
struct TYPE_4__ {int plen; } ;
struct fib6_info {TYPE_2__ fib6_src; struct fib6_nh* fib6_nh; scalar_t__ nh; } ;


 int RTF_CACHE ;
 int fib6_nh_find_match ;
 int fib6_nh_update_exception (struct fib6_nh*,int ,struct rt6_info*) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,struct fib6_nh_match_arg*) ;
 struct fib6_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void rt6_update_exception_stamp_rt(struct rt6_info *rt)
{
 struct fib6_info *from;
 struct fib6_nh *fib6_nh;

 rcu_read_lock();

 from = rcu_dereference(rt->from);
 if (!from || !(rt->rt6i_flags & RTF_CACHE))
  goto unlock;

 if (from->nh) {
  struct fib6_nh_match_arg arg = {
   .dev = rt->dst.dev,
   .gw = &rt->rt6i_gateway,
  };

  nexthop_for_each_fib6_nh(from->nh, fib6_nh_find_match, &arg);

  if (!arg.match)
   goto unlock;
  fib6_nh = arg.match;
 } else {
  fib6_nh = from->fib6_nh;
 }
 fib6_nh_update_exception(fib6_nh, from->fib6_src.plen, rt);
unlock:
 rcu_read_unlock();
}
