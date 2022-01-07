
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int net_dev; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int ** attrs; } ;


 int ENODEV ;
 size_t WIMAX_GNL_STGET_IFIDX ;
 int d_fnend (int,int *,char*,struct sk_buff*,struct genl_info*,int) ;
 int d_fnstart (int,int *,char*,struct sk_buff*,struct genl_info*) ;
 int dev_put (int ) ;
 int nla_get_u32 (int *) ;
 int pr_err (char*) ;
 struct wimax_dev* wimax_dev_get_by_genl_info (struct genl_info*,int) ;
 int wimax_state_get (struct wimax_dev*) ;

int wimax_gnl_doit_state_get(struct sk_buff *skb, struct genl_info *info)
{
 int result, ifindex;
 struct wimax_dev *wimax_dev;

 d_fnstart(3, ((void*)0), "(skb %p info %p)\n", skb, info);
 result = -ENODEV;
 if (info->attrs[WIMAX_GNL_STGET_IFIDX] == ((void*)0)) {
  pr_err("WIMAX_GNL_OP_STATE_GET: can't find IFIDX attribute\n");
  goto error_no_wimax_dev;
 }
 ifindex = nla_get_u32(info->attrs[WIMAX_GNL_STGET_IFIDX]);
 wimax_dev = wimax_dev_get_by_genl_info(info, ifindex);
 if (wimax_dev == ((void*)0))
  goto error_no_wimax_dev;

 result = wimax_state_get(wimax_dev);
 dev_put(wimax_dev->net_dev);
error_no_wimax_dev:
 d_fnend(3, ((void*)0), "(skb %p info %p) = %d\n", skb, info, result);
 return result;
}
