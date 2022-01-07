
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int net_dev; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int ** attrs; } ;
struct device {int dummy; } ;
typedef enum wimax_rf_state { ____Placeholder_wimax_rf_state } wimax_rf_state ;


 int EINVAL ;
 int ENODEV ;
 size_t WIMAX_GNL_RFKILL_IFIDX ;
 size_t WIMAX_GNL_RFKILL_STATE ;
 int d_fnend (int,int *,char*,struct sk_buff*,struct genl_info*,int) ;
 int d_fnstart (int,int *,char*,struct sk_buff*,struct genl_info*) ;
 int dev_err (struct device*,char*) ;
 int dev_put (int ) ;
 int nla_get_u32 (int *) ;
 int pr_err (char*) ;
 struct wimax_dev* wimax_dev_get_by_genl_info (struct genl_info*,int) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;
 int wimax_rfkill (struct wimax_dev*,int) ;

int wimax_gnl_doit_rfkill(struct sk_buff *skb, struct genl_info *info)
{
 int result, ifindex;
 struct wimax_dev *wimax_dev;
 struct device *dev;
 enum wimax_rf_state new_state;

 d_fnstart(3, ((void*)0), "(skb %p info %p)\n", skb, info);
 result = -ENODEV;
 if (info->attrs[WIMAX_GNL_RFKILL_IFIDX] == ((void*)0)) {
  pr_err("WIMAX_GNL_OP_RFKILL: can't find IFIDX attribute\n");
  goto error_no_wimax_dev;
 }
 ifindex = nla_get_u32(info->attrs[WIMAX_GNL_RFKILL_IFIDX]);
 wimax_dev = wimax_dev_get_by_genl_info(info, ifindex);
 if (wimax_dev == ((void*)0))
  goto error_no_wimax_dev;
 dev = wimax_dev_to_dev(wimax_dev);
 result = -EINVAL;
 if (info->attrs[WIMAX_GNL_RFKILL_STATE] == ((void*)0)) {
  dev_err(dev, "WIMAX_GNL_RFKILL: can't find RFKILL_STATE "
   "attribute\n");
  goto error_no_pid;
 }
 new_state = nla_get_u32(info->attrs[WIMAX_GNL_RFKILL_STATE]);


 result = wimax_rfkill(wimax_dev, new_state);
error_no_pid:
 dev_put(wimax_dev->net_dev);
error_no_wimax_dev:
 d_fnend(3, ((void*)0), "(skb %p info %p) = %d\n", skb, info, result);
 return result;
}
