
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rt6_mtu_change_arg {scalar_t__ dev; scalar_t__ mtu; struct fib6_info* f6i; } ;
struct TYPE_2__ {scalar_t__ mtu6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct fib6_nh {scalar_t__ fib_nh_dev; } ;
struct fib6_info {scalar_t__ fib6_pmtu; } ;


 int RTAX_MTU ;
 struct inet6_dev* __in6_dev_get (scalar_t__) ;
 int fib6_metric_set (struct fib6_info*,int ,scalar_t__) ;
 int rt6_exception_lock ;
 int rt6_exceptions_update_pmtu (struct inet6_dev*,struct fib6_nh*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fib6_nh_mtu_change(struct fib6_nh *nh, void *_arg)
{
 struct rt6_mtu_change_arg *arg = (struct rt6_mtu_change_arg *)_arg;
 struct fib6_info *f6i = arg->f6i;






 if (nh->fib_nh_dev == arg->dev) {
  struct inet6_dev *idev = __in6_dev_get(arg->dev);
  u32 mtu = f6i->fib6_pmtu;

  if (mtu >= arg->mtu ||
      (mtu < arg->mtu && mtu == idev->cnf.mtu6))
   fib6_metric_set(f6i, RTAX_MTU, arg->mtu);

  spin_lock_bh(&rt6_exception_lock);
  rt6_exceptions_update_pmtu(idev, nh, arg->mtu);
  spin_unlock_bh(&rt6_exception_lock);
 }

 return 0;
}
