
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fib6_nh {struct net_device const* fib_nh_dev; } ;



__attribute__((used)) static int fib6_info_nh_uses_dev(struct fib6_nh *nh, void *arg)
{
 const struct net_device *dev = arg;

 if (nh->fib_nh_dev == dev)
  return 1;

 return 0;
}
