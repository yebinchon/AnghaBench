
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
struct TYPE_2__ {int (* getbcncfg ) (struct net_device*,int,int *) ;int (* getbcnrp ) (struct net_device*,int,int *) ;} ;


 size_t DCB_ATTR_BCN ;
 size_t DCB_BCN_ATTR_ALL ;
 int DCB_BCN_ATTR_BCNA_0 ;
 int DCB_BCN_ATTR_MAX ;
 int DCB_BCN_ATTR_RI ;
 int DCB_BCN_ATTR_RP_0 ;
 int DCB_BCN_ATTR_RP_7 ;
 int EINVAL ;
 int EMSGSIZE ;
 int EOPNOTSUPP ;
 int dcbnl_bcn_nest ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,size_t) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int nla_put_u32 (struct sk_buff*,int,int ) ;
 int nla_put_u8 (struct sk_buff*,int,int ) ;
 int stub1 (struct net_device*,int,int *) ;
 int stub2 (struct net_device*,int,int *) ;

__attribute__((used)) static int dcbnl_bcn_getcfg(struct net_device *netdev, struct nlmsghdr *nlh,
       u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 struct nlattr *bcn_nest;
 struct nlattr *bcn_tb[DCB_BCN_ATTR_MAX + 1];
 u8 value_byte;
 u32 value_integer;
 int ret;
 bool getall = 0;
 int i;

 if (!tb[DCB_ATTR_BCN])
  return -EINVAL;

 if (!netdev->dcbnl_ops->getbcnrp ||
     !netdev->dcbnl_ops->getbcncfg)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(bcn_tb, DCB_BCN_ATTR_MAX,
       tb[DCB_ATTR_BCN], dcbnl_bcn_nest,
       ((void*)0));
 if (ret)
  return ret;

 bcn_nest = nla_nest_start_noflag(skb, DCB_ATTR_BCN);
 if (!bcn_nest)
  return -EMSGSIZE;

 if (bcn_tb[DCB_BCN_ATTR_ALL])
  getall = 1;

 for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
  if (!getall && !bcn_tb[i])
   continue;

  netdev->dcbnl_ops->getbcnrp(netdev, i - DCB_BCN_ATTR_RP_0,
                              &value_byte);
  ret = nla_put_u8(skb, i, value_byte);
  if (ret)
   goto err_bcn;
 }

 for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
  if (!getall && !bcn_tb[i])
   continue;

  netdev->dcbnl_ops->getbcncfg(netdev, i,
                               &value_integer);
  ret = nla_put_u32(skb, i, value_integer);
  if (ret)
   goto err_bcn;
 }

 nla_nest_end(skb, bcn_nest);

 return 0;

err_bcn:
 nla_nest_cancel(skb, bcn_nest);
 return ret;
}
