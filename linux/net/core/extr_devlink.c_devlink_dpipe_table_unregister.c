
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_table {int list; } ;
struct devlink {int lock; int dpipe_table_list; } ;


 struct devlink_dpipe_table* devlink_dpipe_table_find (int *,char const*) ;
 int kfree_rcu (struct devlink_dpipe_table*,int ) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu ;

void devlink_dpipe_table_unregister(struct devlink *devlink,
        const char *table_name)
{
 struct devlink_dpipe_table *table;

 mutex_lock(&devlink->lock);
 table = devlink_dpipe_table_find(&devlink->dpipe_table_list,
      table_name);
 if (!table)
  goto unlock;
 list_del_rcu(&table->list);
 mutex_unlock(&devlink->lock);
 kfree_rcu(table, rcu);
 return;
unlock:
 mutex_unlock(&devlink->lock);
}
