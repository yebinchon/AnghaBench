
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int type_warn_dw; } ;


 int cancel_delayed_work_sync (int *) ;
 int devlink_port_type_should_warn (struct devlink_port*) ;

__attribute__((used)) static void devlink_port_type_warn_cancel(struct devlink_port *devlink_port)
{
 if (!devlink_port_type_should_warn(devlink_port))
  return;
 cancel_delayed_work_sync(&devlink_port->type_warn_dw);
}
