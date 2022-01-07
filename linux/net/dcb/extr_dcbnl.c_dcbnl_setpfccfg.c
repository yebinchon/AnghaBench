
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {scalar_t__ nla_type; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int (* setpfccfg ) (struct net_device*,scalar_t__,int ) ;} ;


 size_t DCB_ATTR_PFC_CFG ;
 int DCB_PFC_UP_ATTR_0 ;
 int DCB_PFC_UP_ATTR_7 ;
 int DCB_PFC_UP_ATTR_MAX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int dcbnl_pfc_up_nest ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int nla_put_u8 (struct sk_buff*,size_t,int ) ;
 int stub1 (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static int dcbnl_setpfccfg(struct net_device *netdev, struct nlmsghdr *nlh,
      u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 struct nlattr *data[DCB_PFC_UP_ATTR_MAX + 1];
 int i;
 int ret;
 u8 value;

 if (!tb[DCB_ATTR_PFC_CFG])
  return -EINVAL;

 if (!netdev->dcbnl_ops->setpfccfg)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(data, DCB_PFC_UP_ATTR_MAX,
       tb[DCB_ATTR_PFC_CFG],
       dcbnl_pfc_up_nest, ((void*)0));
 if (ret)
  return ret;

 for (i = DCB_PFC_UP_ATTR_0; i <= DCB_PFC_UP_ATTR_7; i++) {
  if (data[i] == ((void*)0))
   continue;
  value = nla_get_u8(data[i]);
  netdev->dcbnl_ops->setpfccfg(netdev,
   data[i]->nla_type - DCB_PFC_UP_ATTR_0, value);
 }

 return nla_put_u8(skb, DCB_ATTR_PFC_CFG, 0);
}
