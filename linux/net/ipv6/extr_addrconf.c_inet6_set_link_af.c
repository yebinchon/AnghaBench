
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int addr_gen_mode; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 int BUG () ;
 size_t IFLA_INET6_ADDR_GEN_MODE ;
 int IFLA_INET6_MAX ;
 size_t IFLA_INET6_TOKEN ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int inet6_set_iftoken (struct inet6_dev*,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int *,int *) ;

__attribute__((used)) static int inet6_set_link_af(struct net_device *dev, const struct nlattr *nla)
{
 struct inet6_dev *idev = __in6_dev_get(dev);
 struct nlattr *tb[IFLA_INET6_MAX + 1];
 int err;

 if (nla_parse_nested_deprecated(tb, IFLA_INET6_MAX, nla, ((void*)0), ((void*)0)) < 0)
  BUG();

 if (tb[IFLA_INET6_TOKEN]) {
  err = inet6_set_iftoken(idev, nla_data(tb[IFLA_INET6_TOKEN]));
  if (err)
   return err;
 }

 if (tb[IFLA_INET6_ADDR_GEN_MODE]) {
  u8 mode = nla_get_u8(tb[IFLA_INET6_ADDR_GEN_MODE]);

  idev->cnf.addr_gen_mode = mode;
 }

 return 0;
}
