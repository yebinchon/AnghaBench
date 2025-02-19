
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct dcbnl_rtnl_ops {int (* getpgbwgcfgtx ) (struct net_device*,int,int *) ;int (* getpgbwgcfgrx ) (struct net_device*,int,int *) ;int (* getpgtccfgtx ) (struct net_device*,int,int *,int *,int *,int *) ;int (* getpgtccfgrx ) (struct net_device*,int,int *,int *,int *,int *) ;} ;


 int DCB_ATTR_CEE_RX_PG ;
 int DCB_ATTR_CEE_TX_PG ;
 int DCB_ATTR_VALUE_UNDEFINED ;
 int DCB_PG_ATTR_BW_ID_0 ;
 int DCB_PG_ATTR_BW_ID_7 ;
 int DCB_PG_ATTR_TC_0 ;
 int DCB_PG_ATTR_TC_7 ;
 int DCB_TC_ATTR_PARAM_BW_PCT ;
 int DCB_TC_ATTR_PARAM_PGID ;
 int DCB_TC_ATTR_PARAM_STRICT_PRIO ;
 int DCB_TC_ATTR_PARAM_UP_MAPPING ;
 int EMSGSIZE ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int,int ) ;
 int stub1 (struct net_device*,int,int *,int *,int *,int *) ;
 int stub2 (struct net_device*,int,int *,int *,int *,int *) ;
 int stub3 (struct net_device*,int,int *) ;
 int stub4 (struct net_device*,int,int *) ;

__attribute__((used)) static int dcbnl_cee_pg_fill(struct sk_buff *skb, struct net_device *dev,
        int dir)
{
 u8 pgid, up_map, prio, tc_pct;
 const struct dcbnl_rtnl_ops *ops = dev->dcbnl_ops;
 int i = dir ? DCB_ATTR_CEE_TX_PG : DCB_ATTR_CEE_RX_PG;
 struct nlattr *pg = nla_nest_start_noflag(skb, i);

 if (!pg)
  return -EMSGSIZE;

 for (i = DCB_PG_ATTR_TC_0; i <= DCB_PG_ATTR_TC_7; i++) {
  struct nlattr *tc_nest = nla_nest_start_noflag(skb, i);

  if (!tc_nest)
   return -EMSGSIZE;

  pgid = DCB_ATTR_VALUE_UNDEFINED;
  prio = DCB_ATTR_VALUE_UNDEFINED;
  tc_pct = DCB_ATTR_VALUE_UNDEFINED;
  up_map = DCB_ATTR_VALUE_UNDEFINED;

  if (!dir)
   ops->getpgtccfgrx(dev, i - DCB_PG_ATTR_TC_0,
       &prio, &pgid, &tc_pct, &up_map);
  else
   ops->getpgtccfgtx(dev, i - DCB_PG_ATTR_TC_0,
       &prio, &pgid, &tc_pct, &up_map);

  if (nla_put_u8(skb, DCB_TC_ATTR_PARAM_PGID, pgid) ||
      nla_put_u8(skb, DCB_TC_ATTR_PARAM_UP_MAPPING, up_map) ||
      nla_put_u8(skb, DCB_TC_ATTR_PARAM_STRICT_PRIO, prio) ||
      nla_put_u8(skb, DCB_TC_ATTR_PARAM_BW_PCT, tc_pct))
   return -EMSGSIZE;
  nla_nest_end(skb, tc_nest);
 }

 for (i = DCB_PG_ATTR_BW_ID_0; i <= DCB_PG_ATTR_BW_ID_7; i++) {
  tc_pct = DCB_ATTR_VALUE_UNDEFINED;

  if (!dir)
   ops->getpgbwgcfgrx(dev, i - DCB_PG_ATTR_BW_ID_0,
        &tc_pct);
  else
   ops->getpgbwgcfgtx(dev, i - DCB_PG_ATTR_BW_ID_0,
        &tc_pct);
  if (nla_put_u8(skb, i, tc_pct))
   return -EMSGSIZE;
 }
 nla_nest_end(skb, pg);
 return 0;
}
