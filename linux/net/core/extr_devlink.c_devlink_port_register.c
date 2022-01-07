
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {unsigned int index; int registered; int type_warn_dw; int param_list; int list; int type_lock; struct devlink* devlink; } ;
struct devlink {int lock; int port_list; } ;


 int DEVLINK_CMD_PORT_NEW ;
 int EEXIST ;
 int INIT_DELAYED_WORK (int *,int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ devlink_port_index_exists (struct devlink*,unsigned int) ;
 int devlink_port_notify (struct devlink_port*,int ) ;
 int devlink_port_type_warn ;
 int devlink_port_type_warn_schedule (struct devlink_port*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

int devlink_port_register(struct devlink *devlink,
     struct devlink_port *devlink_port,
     unsigned int port_index)
{
 mutex_lock(&devlink->lock);
 if (devlink_port_index_exists(devlink, port_index)) {
  mutex_unlock(&devlink->lock);
  return -EEXIST;
 }
 devlink_port->devlink = devlink;
 devlink_port->index = port_index;
 devlink_port->registered = 1;
 spin_lock_init(&devlink_port->type_lock);
 list_add_tail(&devlink_port->list, &devlink->port_list);
 INIT_LIST_HEAD(&devlink_port->param_list);
 mutex_unlock(&devlink->lock);
 INIT_DELAYED_WORK(&devlink_port->type_warn_dw, &devlink_port_type_warn);
 devlink_port_type_warn_schedule(devlink_port);
 devlink_port_notify(devlink_port, DEVLINK_CMD_PORT_NEW);
 return 0;
}
