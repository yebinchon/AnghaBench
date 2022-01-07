
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int type; int type_lock; void* type_dev; int registered; } ;
typedef enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;


 int DEVLINK_CMD_PORT_NEW ;
 scalar_t__ WARN_ON (int) ;
 int devlink_port_notify (struct devlink_port*,int ) ;
 int devlink_port_type_warn_cancel (struct devlink_port*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void __devlink_port_type_set(struct devlink_port *devlink_port,
        enum devlink_port_type type,
        void *type_dev)
{
 if (WARN_ON(!devlink_port->registered))
  return;
 devlink_port_type_warn_cancel(devlink_port);
 spin_lock_bh(&devlink_port->type_lock);
 devlink_port->type = type;
 devlink_port->type_dev = type_dev;
 spin_unlock_bh(&devlink_port->type_lock);
 devlink_port_notify(devlink_port, DEVLINK_CMD_PORT_NEW);
}
