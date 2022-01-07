
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct devlink** user_ptr; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED ;
 size_t DEVLINK_ATTR_DPIPE_TABLE_NAME ;
 int EINVAL ;
 int devlink_dpipe_table_counters_set (struct devlink*,char const*,int) ;
 char* nla_data (int ) ;
 int nla_get_u8 (int ) ;

__attribute__((used)) static int devlink_nl_cmd_dpipe_table_counters_set(struct sk_buff *skb,
         struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 const char *table_name;
 bool counters_enable;

 if (!info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME] ||
     !info->attrs[DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED])
  return -EINVAL;

 table_name = nla_data(info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME]);
 counters_enable = !!nla_get_u8(info->attrs[DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED]);

 return devlink_dpipe_table_counters_set(devlink, table_name,
      counters_enable);
}
