
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int type_warn_dw; } ;


 int DEVLINK_PORT_TYPE_WARN_TIMEOUT ;
 int devlink_port_type_should_warn (struct devlink_port*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void devlink_port_type_warn_schedule(struct devlink_port *devlink_port)
{
 if (!devlink_port_type_should_warn(devlink_port))
  return;



 schedule_delayed_work(&devlink_port->type_warn_dw,
         DEVLINK_PORT_TYPE_WARN_TIMEOUT);
}
