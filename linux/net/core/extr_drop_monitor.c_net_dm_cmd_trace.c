
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_info {TYPE_1__* genlhdr; struct netlink_ext_ack* extack; int * attrs; } ;
struct TYPE_2__ {int cmd; } ;


 int EOPNOTSUPP ;
 size_t NET_DM_ATTR_HW_DROPS ;
 size_t NET_DM_ATTR_SW_DROPS ;


 int net_dm_monitor_start (int,int,struct netlink_ext_ack*) ;
 int net_dm_monitor_stop (int,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int net_dm_cmd_trace(struct sk_buff *skb,
   struct genl_info *info)
{
 bool set_sw = !!info->attrs[NET_DM_ATTR_SW_DROPS];
 bool set_hw = !!info->attrs[NET_DM_ATTR_HW_DROPS];
 struct netlink_ext_ack *extack = info->extack;




 if (!set_sw && !set_hw)
  set_sw = 1;

 switch (info->genlhdr->cmd) {
 case 129:
  return net_dm_monitor_start(set_sw, set_hw, extack);
 case 128:
  net_dm_monitor_stop(set_sw, set_hw, extack);
  return 0;
 }

 return -EOPNOTSUPP;
}
