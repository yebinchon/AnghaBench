
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_dpipe_table {int counters_enabled; int priv; TYPE_1__* table_ops; scalar_t__ counter_control_extern; } ;
struct devlink {int dpipe_table_list; } ;
struct TYPE_2__ {int (* counters_set_update ) (int ,int) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct devlink_dpipe_table* devlink_dpipe_table_find (int *,char const*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int devlink_dpipe_table_counters_set(struct devlink *devlink,
         const char *table_name,
         bool enable)
{
 struct devlink_dpipe_table *table;

 table = devlink_dpipe_table_find(&devlink->dpipe_table_list,
      table_name);
 if (!table)
  return -EINVAL;

 if (table->counter_control_extern)
  return -EOPNOTSUPP;

 if (!(table->counters_enabled ^ enable))
  return 0;

 table->counters_enabled = enable;
 if (table->table_ops->counters_set_update)
  table->table_ops->counters_set_update(table->priv, enable);
 return 0;
}
