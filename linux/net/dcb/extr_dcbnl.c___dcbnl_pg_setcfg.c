
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
struct TYPE_2__ {int (* setpgbwgcfgtx ) (struct net_device*,int,int ) ;int (* setpgbwgcfgrx ) (struct net_device*,int,int ) ;int (* setpgtccfgtx ) (struct net_device*,int,int ,int ,int ,int ) ;int (* setpgtccfgrx ) (struct net_device*,int,int ,int ,int ,int ) ;} ;


 size_t DCB_ATTR_PG_CFG ;
 int DCB_ATTR_VALUE_UNDEFINED ;
 int DCB_PG_ATTR_BW_ID_0 ;
 int DCB_PG_ATTR_BW_ID_7 ;
 int DCB_PG_ATTR_MAX ;
 int DCB_PG_ATTR_TC_0 ;
 int DCB_PG_ATTR_TC_7 ;
 size_t DCB_TC_ATTR_PARAM_BW_PCT ;
 int DCB_TC_ATTR_PARAM_MAX ;
 size_t DCB_TC_ATTR_PARAM_PGID ;
 size_t DCB_TC_ATTR_PARAM_STRICT_PRIO ;
 size_t DCB_TC_ATTR_PARAM_UP_MAPPING ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int dcbnl_pg_nest ;
 int dcbnl_tc_param_nest ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int nla_put_u8 (struct sk_buff*,size_t,int ) ;
 int stub1 (struct net_device*,int,int ,int ,int ,int ) ;
 int stub2 (struct net_device*,int,int ,int ,int ,int ) ;
 int stub3 (struct net_device*,int,int ) ;
 int stub4 (struct net_device*,int,int ) ;

__attribute__((used)) static int __dcbnl_pg_setcfg(struct net_device *netdev, struct nlmsghdr *nlh,
        u32 seq, struct nlattr **tb, struct sk_buff *skb,
        int dir)
{
 struct nlattr *pg_tb[DCB_PG_ATTR_MAX + 1];
 struct nlattr *param_tb[DCB_TC_ATTR_PARAM_MAX + 1];
 int ret;
 int i;
 u8 pgid;
 u8 up_map;
 u8 prio;
 u8 tc_pct;

 if (!tb[DCB_ATTR_PG_CFG])
  return -EINVAL;

 if (!netdev->dcbnl_ops->setpgtccfgtx ||
     !netdev->dcbnl_ops->setpgtccfgrx ||
     !netdev->dcbnl_ops->setpgbwgcfgtx ||
     !netdev->dcbnl_ops->setpgbwgcfgrx)
  return -EOPNOTSUPP;

 ret = nla_parse_nested_deprecated(pg_tb, DCB_PG_ATTR_MAX,
       tb[DCB_ATTR_PG_CFG], dcbnl_pg_nest,
       ((void*)0));
 if (ret)
  return ret;

 for (i = DCB_PG_ATTR_TC_0; i <= DCB_PG_ATTR_TC_7; i++) {
  if (!pg_tb[i])
   continue;

  ret = nla_parse_nested_deprecated(param_tb,
        DCB_TC_ATTR_PARAM_MAX,
        pg_tb[i],
        dcbnl_tc_param_nest, ((void*)0));
  if (ret)
   return ret;

  pgid = DCB_ATTR_VALUE_UNDEFINED;
  prio = DCB_ATTR_VALUE_UNDEFINED;
  tc_pct = DCB_ATTR_VALUE_UNDEFINED;
  up_map = DCB_ATTR_VALUE_UNDEFINED;

  if (param_tb[DCB_TC_ATTR_PARAM_STRICT_PRIO])
   prio =
       nla_get_u8(param_tb[DCB_TC_ATTR_PARAM_STRICT_PRIO]);

  if (param_tb[DCB_TC_ATTR_PARAM_PGID])
   pgid = nla_get_u8(param_tb[DCB_TC_ATTR_PARAM_PGID]);

  if (param_tb[DCB_TC_ATTR_PARAM_BW_PCT])
   tc_pct = nla_get_u8(param_tb[DCB_TC_ATTR_PARAM_BW_PCT]);

  if (param_tb[DCB_TC_ATTR_PARAM_UP_MAPPING])
   up_map =
        nla_get_u8(param_tb[DCB_TC_ATTR_PARAM_UP_MAPPING]);


  if (dir) {

   netdev->dcbnl_ops->setpgtccfgrx(netdev,
    i - DCB_PG_ATTR_TC_0,
    prio, pgid, tc_pct, up_map);
  } else {

   netdev->dcbnl_ops->setpgtccfgtx(netdev,
    i - DCB_PG_ATTR_TC_0,
    prio, pgid, tc_pct, up_map);
  }
 }

 for (i = DCB_PG_ATTR_BW_ID_0; i <= DCB_PG_ATTR_BW_ID_7; i++) {
  if (!pg_tb[i])
   continue;

  tc_pct = nla_get_u8(pg_tb[i]);


  if (dir) {

   netdev->dcbnl_ops->setpgbwgcfgrx(netdev,
      i - DCB_PG_ATTR_BW_ID_0, tc_pct);
  } else {

   netdev->dcbnl_ops->setpgbwgcfgtx(netdev,
      i - DCB_PG_ATTR_BW_ID_0, tc_pct);
  }
 }

 return nla_put_u8(skb, DCB_ATTR_PG_CFG, 0);
}
