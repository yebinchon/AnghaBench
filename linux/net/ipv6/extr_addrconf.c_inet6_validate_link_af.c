
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 size_t IFLA_INET6_ADDR_GEN_MODE ;
 int IFLA_INET6_MAX ;
 size_t IFLA_INET6_TOKEN ;
 struct inet6_dev* __in6_dev_get (struct net_device const*) ;
 scalar_t__ check_addr_gen_mode (int ) ;
 scalar_t__ check_stable_privacy (struct inet6_dev*,int ,int ) ;
 int dev_net (struct net_device const*) ;
 int inet6_af_policy ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

__attribute__((used)) static int inet6_validate_link_af(const struct net_device *dev,
      const struct nlattr *nla)
{
 struct nlattr *tb[IFLA_INET6_MAX + 1];
 struct inet6_dev *idev = ((void*)0);
 int err;

 if (dev) {
  idev = __in6_dev_get(dev);
  if (!idev)
   return -EAFNOSUPPORT;
 }

 err = nla_parse_nested_deprecated(tb, IFLA_INET6_MAX, nla,
       inet6_af_policy, ((void*)0));
 if (err)
  return err;

 if (!tb[IFLA_INET6_TOKEN] && !tb[IFLA_INET6_ADDR_GEN_MODE])
  return -EINVAL;

 if (tb[IFLA_INET6_ADDR_GEN_MODE]) {
  u8 mode = nla_get_u8(tb[IFLA_INET6_ADDR_GEN_MODE]);

  if (check_addr_gen_mode(mode) < 0)
   return -EINVAL;
  if (dev && check_stable_privacy(idev, dev_net(dev), mode) < 0)
   return -EINVAL;
 }

 return 0;
}
