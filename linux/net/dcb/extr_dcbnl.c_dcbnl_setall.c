
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
struct TYPE_2__ {int (* setall ) (struct net_device*) ;} ;


 size_t DCB_ATTR_SET_ALL ;
 int DCB_CMD_SET_ALL ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int RTM_SETDCB ;
 int dcbnl_cee_notify (struct net_device*,int ,int ,int ,int ) ;
 int nla_put_u8 (struct sk_buff*,size_t,int ) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int dcbnl_setall(struct net_device *netdev, struct nlmsghdr *nlh,
   u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 int ret;

 if (!tb[DCB_ATTR_SET_ALL])
  return -EINVAL;

 if (!netdev->dcbnl_ops->setall)
  return -EOPNOTSUPP;

 ret = nla_put_u8(skb, DCB_ATTR_SET_ALL,
    netdev->dcbnl_ops->setall(netdev));
 dcbnl_cee_notify(netdev, RTM_SETDCB, DCB_CMD_SET_ALL, seq, 0);

 return ret;
}
