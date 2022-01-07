
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* getstate ) (struct net_device*) ;} ;


 int DCB_ATTR_STATE ;
 int EOPNOTSUPP ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dcbnl_getstate(struct net_device *netdev, struct nlmsghdr *nlh,
     u32 seq, struct nlattr **tb, struct sk_buff *skb)
{

 if (!netdev->dcbnl_ops->getstate)
  return -EOPNOTSUPP;

 return nla_put_u8(skb, DCB_ATTR_STATE,
     netdev->dcbnl_ops->getstate(netdev));
}
