
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; struct devlink** user_ptr; } ;
struct devlink {int dpipe_table_list; } ;


 size_t DEVLINK_ATTR_DPIPE_TABLE_NAME ;
 int DEVLINK_CMD_DPIPE_TABLE_GET ;
 int devlink_dpipe_tables_fill (struct genl_info*,int ,int ,int *,char const*) ;
 char* nla_data (scalar_t__) ;

__attribute__((used)) static int devlink_nl_cmd_dpipe_table_get(struct sk_buff *skb,
       struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 const char *table_name = ((void*)0);

 if (info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME])
  table_name = nla_data(info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME]);

 return devlink_dpipe_tables_fill(info, DEVLINK_CMD_DPIPE_TABLE_GET, 0,
      &devlink->dpipe_table_list,
      table_name);
}
