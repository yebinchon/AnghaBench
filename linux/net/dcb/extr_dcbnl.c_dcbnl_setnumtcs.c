
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
struct TYPE_2__ {int (* setnumtcs ) (struct net_device*,int,int ) ;} ;


 size_t DCB_ATTR_NUMTCS ;
 int DCB_NUMTCS_ATTR_ALL ;
 int DCB_NUMTCS_ATTR_MAX ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int dcbnl_numtcs_nest ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,int ,int *) ;
 int nla_put_u8 (struct sk_buff*,size_t,int) ;
 int stub1 (struct net_device*,int,int ) ;

__attribute__((used)) static int dcbnl_setnumtcs(struct net_device *netdev, struct nlmsghdr *nlh,
      u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
 struct nlattr *data[DCB_NUMTCS_ATTR_MAX + 1];
 int ret;
 u8 value;
 int i;

 if (!tb[DCB_ATTR_NUMTCS])
  return -EINVAL;

 if (!netdev->dcbnl_ops->setnumtcs)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(data, DCB_NUMTCS_ATTR_MAX,
       tb[DCB_ATTR_NUMTCS],
       dcbnl_numtcs_nest, ((void*)0));
 if (ret)
  return ret;

 for (i = DCB_NUMTCS_ATTR_ALL+1; i <= DCB_NUMTCS_ATTR_MAX; i++) {
  if (data[i] == ((void*)0))
   continue;

  value = nla_get_u8(data[i]);

  ret = netdev->dcbnl_ops->setnumtcs(netdev, i, value);
  if (ret)
   break;
 }

 return nla_put_u8(skb, DCB_ATTR_NUMTCS, !!ret);
}
