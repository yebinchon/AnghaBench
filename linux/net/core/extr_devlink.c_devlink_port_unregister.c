
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int list; struct devlink* devlink; } ;
struct devlink {int lock; } ;


 int DEVLINK_CMD_PORT_DEL ;
 int devlink_port_notify (struct devlink_port*,int ) ;
 int devlink_port_type_warn_cancel (struct devlink_port*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devlink_port_unregister(struct devlink_port *devlink_port)
{
 struct devlink *devlink = devlink_port->devlink;

 devlink_port_type_warn_cancel(devlink_port);
 devlink_port_notify(devlink_port, DEVLINK_CMD_PORT_DEL);
 mutex_lock(&devlink->lock);
 list_del(&devlink_port->list);
 mutex_unlock(&devlink->lock);
}
