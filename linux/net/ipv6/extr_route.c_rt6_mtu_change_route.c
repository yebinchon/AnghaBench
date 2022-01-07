
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_mtu_change_arg {struct fib6_info* f6i; int dev; } ;
struct inet6_dev {int dummy; } ;
struct fib6_info {int fib6_nh; scalar_t__ nh; } ;


 int RTAX_MTU ;
 struct inet6_dev* __in6_dev_get (int ) ;
 scalar_t__ fib6_metric_locked (struct fib6_info*,int ) ;
 int fib6_nh_mtu_change (int ,struct rt6_mtu_change_arg*) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int (*) (int ,struct rt6_mtu_change_arg*),struct rt6_mtu_change_arg*) ;

__attribute__((used)) static int rt6_mtu_change_route(struct fib6_info *f6i, void *p_arg)
{
 struct rt6_mtu_change_arg *arg = (struct rt6_mtu_change_arg *) p_arg;
 struct inet6_dev *idev;







 idev = __in6_dev_get(arg->dev);
 if (!idev)
  return 0;

 if (fib6_metric_locked(f6i, RTAX_MTU))
  return 0;

 arg->f6i = f6i;
 if (f6i->nh) {

  return nexthop_for_each_fib6_nh(f6i->nh, fib6_nh_mtu_change,
      arg);
 }

 return fib6_nh_mtu_change(f6i->fib6_nh, arg);
}
