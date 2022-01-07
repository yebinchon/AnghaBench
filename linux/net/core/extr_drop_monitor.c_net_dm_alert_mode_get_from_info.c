
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct genl_info {int * attrs; } ;
typedef enum net_dm_alert_mode { ____Placeholder_net_dm_alert_mode } net_dm_alert_mode ;


 int EINVAL ;


 size_t NET_DM_ATTR_ALERT_MODE ;
 int nla_get_u8 (int ) ;

__attribute__((used)) static int net_dm_alert_mode_get_from_info(struct genl_info *info,
        enum net_dm_alert_mode *p_alert_mode)
{
 u8 val;

 val = nla_get_u8(info->attrs[NET_DM_ATTR_ALERT_MODE]);

 switch (val) {
 case 128:
 case 129:
  *p_alert_mode = val;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
