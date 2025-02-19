
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
struct TYPE_2__ {int (* getpfccfg ) (struct net_device*,int,int *) ;} ;


 size_t DCB_ATTR_PFC_CFG ;
 int DCB_PFC_UP_ATTR_0 ;
 int DCB_PFC_UP_ATTR_7 ;
 size_t DCB_PFC_UP_ATTR_ALL ;
 int DCB_PFC_UP_ATTR_MAX ;
 int EINVAL ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;
 int dcbnl_pfc_up_nest ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,size_t) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int nla_put_u8 (struct sk_buff*,int,int ) ;
 int stub1 (struct net_device*,int,int *) ;

__attribute__((used)) static int dcbnl_getpfccfg(struct net_device *netdev, struct nlmsghdr *nlh,
      u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 struct nlattr *data[DCB_PFC_UP_ATTR_MAX + 1], *nest;
 u8 value;
 int ret;
 int i;
 int getall = 0;

 if (!tb[DCB_ATTR_PFC_CFG])
  return -EINVAL;

 if (!netdev->dcbnl_ops->getpfccfg)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(data, DCB_PFC_UP_ATTR_MAX,
       tb[DCB_ATTR_PFC_CFG],
       dcbnl_pfc_up_nest, ((void*)0));
 if (ret)
  return ret;

 nest = nla_nest_start_noflag(skb, DCB_ATTR_PFC_CFG);
 if (!nest)
  return -EMSGSIZE;

 if (data[DCB_PFC_UP_ATTR_ALL])
  getall = 1;

 for (i = DCB_PFC_UP_ATTR_0; i <= DCB_PFC_UP_ATTR_7; i++) {
  if (!getall && !data[i])
   continue;

  netdev->dcbnl_ops->getpfccfg(netdev, i - DCB_PFC_UP_ATTR_0,
                               &value);
  ret = nla_put_u8(skb, i, value);
  if (ret) {
   nla_nest_cancel(skb, nest);
   return ret;
  }
 }
 nla_nest_end(skb, nest);

 return 0;
}
