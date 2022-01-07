
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ disable_ipv6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 struct inet6_dev* __in6_dev_get (struct net_device const*) ;

__attribute__((used)) static bool ndisc_allow_add(const struct net_device *dev,
       struct netlink_ext_ack *extack)
{
 struct inet6_dev *idev = __in6_dev_get(dev);

 if (!idev || idev->cnf.disable_ipv6) {
  NL_SET_ERR_MSG(extack, "IPv6 is disabled on this device");
  return 0;
 }

 return 1;
}
