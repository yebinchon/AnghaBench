
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_ops {int dummy; } ;
struct devlink {int reporters_lock; int lock; int trap_group_list; int trap_list; int reporter_list; int region_list; int param_list; int resource_list; int dpipe_table_list; int sb_list; int port_list; struct devlink_ops const* ops; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_LIST_HEAD_RCU (int *) ;
 scalar_t__ WARN_ON (int) ;
 int devlink_net_set (struct devlink*,int *) ;
 int init_net ;
 struct devlink* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct devlink *devlink_alloc(const struct devlink_ops *ops, size_t priv_size)
{
 struct devlink *devlink;

 if (WARN_ON(!ops))
  return ((void*)0);

 devlink = kzalloc(sizeof(*devlink) + priv_size, GFP_KERNEL);
 if (!devlink)
  return ((void*)0);
 devlink->ops = ops;
 devlink_net_set(devlink, &init_net);
 INIT_LIST_HEAD(&devlink->port_list);
 INIT_LIST_HEAD(&devlink->sb_list);
 INIT_LIST_HEAD_RCU(&devlink->dpipe_table_list);
 INIT_LIST_HEAD(&devlink->resource_list);
 INIT_LIST_HEAD(&devlink->param_list);
 INIT_LIST_HEAD(&devlink->region_list);
 INIT_LIST_HEAD(&devlink->reporter_list);
 INIT_LIST_HEAD(&devlink->trap_list);
 INIT_LIST_HEAD(&devlink->trap_group_list);
 mutex_init(&devlink->lock);
 mutex_init(&devlink->reporters_lock);
 return devlink;
}
