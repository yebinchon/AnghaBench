
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib6_info {TYPE_1__* fib6_nh; } ;
struct TYPE_2__ {int fib_nh_flags; int fib_nh_dev; } ;


 int RTNH_F_DEAD ;
 int RTNH_F_LINKDOWN ;
 scalar_t__ ip6_ignore_linkdown (int ) ;

__attribute__((used)) static bool rt6_is_dead(const struct fib6_info *rt)
{
 if (rt->fib6_nh->fib_nh_flags & RTNH_F_DEAD ||
     (rt->fib6_nh->fib_nh_flags & RTNH_F_LINKDOWN &&
      ip6_ignore_linkdown(rt->fib6_nh->fib_nh_dev)))
  return 1;

 return 0;
}
