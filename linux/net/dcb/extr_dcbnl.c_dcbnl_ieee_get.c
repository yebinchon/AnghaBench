
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct dcbnl_rtnl_ops {int dummy; } ;


 int EOPNOTSUPP ;
 int dcbnl_ieee_fill (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static int dcbnl_ieee_get(struct net_device *netdev, struct nlmsghdr *nlh,
     u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 const struct dcbnl_rtnl_ops *ops = netdev->dcbnl_ops;

 if (!ops)
  return -EOPNOTSUPP;

 return dcbnl_ieee_fill(skb, netdev);
}
