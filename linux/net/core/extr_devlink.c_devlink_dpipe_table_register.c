
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_table_ops {int size_get; } ;
struct devlink_dpipe_table {char const* name; int counter_control_extern; int list; void* priv; struct devlink_dpipe_table_ops* table_ops; } ;
struct devlink {int lock; int dpipe_table_list; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ devlink_dpipe_table_find (int *,char const*) ;
 struct devlink_dpipe_table* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_dpipe_table_register(struct devlink *devlink,
     const char *table_name,
     struct devlink_dpipe_table_ops *table_ops,
     void *priv, bool counter_control_extern)
{
 struct devlink_dpipe_table *table;

 if (devlink_dpipe_table_find(&devlink->dpipe_table_list, table_name))
  return -EEXIST;

 if (WARN_ON(!table_ops->size_get))
  return -EINVAL;

 table = kzalloc(sizeof(*table), GFP_KERNEL);
 if (!table)
  return -ENOMEM;

 table->name = table_name;
 table->table_ops = table_ops;
 table->priv = priv;
 table->counter_control_extern = counter_control_extern;

 mutex_lock(&devlink->lock);
 list_add_tail_rcu(&table->list, &devlink->dpipe_table_list);
 mutex_unlock(&devlink->lock);
 return 0;
}
