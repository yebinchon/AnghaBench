
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct devlink** user_ptr; } ;
struct devlink_dpipe_table {TYPE_1__* table_ops; } ;
struct devlink {int dpipe_table_list; } ;
struct TYPE_2__ {int entries_dump; } ;


 size_t DEVLINK_ATTR_DPIPE_TABLE_NAME ;
 int DEVLINK_CMD_DPIPE_ENTRIES_GET ;
 int EINVAL ;
 int devlink_dpipe_entries_fill (struct genl_info*,int ,int ,struct devlink_dpipe_table*) ;
 struct devlink_dpipe_table* devlink_dpipe_table_find (int *,char const*) ;
 char* nla_data (int ) ;

__attribute__((used)) static int devlink_nl_cmd_dpipe_entries_get(struct sk_buff *skb,
         struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_dpipe_table *table;
 const char *table_name;

 if (!info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME])
  return -EINVAL;

 table_name = nla_data(info->attrs[DEVLINK_ATTR_DPIPE_TABLE_NAME]);
 table = devlink_dpipe_table_find(&devlink->dpipe_table_list,
      table_name);
 if (!table)
  return -EINVAL;

 if (!table->table_ops->entries_dump)
  return -EINVAL;

 return devlink_dpipe_entries_fill(info, DEVLINK_CMD_DPIPE_ENTRIES_GET,
       0, table);
}
