
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_table {int counters_enabled; } ;
struct devlink {int dpipe_table_list; } ;


 struct devlink_dpipe_table* devlink_dpipe_table_find (int *,char const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool devlink_dpipe_table_counter_enabled(struct devlink *devlink,
      const char *table_name)
{
 struct devlink_dpipe_table *table;
 bool enabled;

 rcu_read_lock();
 table = devlink_dpipe_table_find(&devlink->dpipe_table_list,
      table_name);
 enabled = 0;
 if (table)
  enabled = table->counters_enabled;
 rcu_read_unlock();
 return enabled;
}
