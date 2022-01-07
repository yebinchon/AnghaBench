
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setdcbx ) (struct net_device*,int ) ;} ;


 size_t DCB_ATTR_DCBX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_put_u8 (struct sk_buff*,size_t,int ) ;
 int stub1 (struct net_device*,int ) ;

__attribute__((used)) static int dcbnl_setdcbx(struct net_device *netdev, struct nlmsghdr *nlh,
    u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 u8 value;

 if (!netdev->dcbnl_ops->setdcbx)
  return -EOPNOTSUPP;

 if (!tb[DCB_ATTR_DCBX])
  return -EINVAL;

 value = nla_get_u8(tb[DCB_ATTR_DCBX]);

 return nla_put_u8(skb, DCB_ATTR_DCBX,
     netdev->dcbnl_ops->setdcbx(netdev, value));
}
