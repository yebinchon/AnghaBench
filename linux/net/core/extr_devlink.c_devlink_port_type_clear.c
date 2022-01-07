
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int dummy; } ;


 int DEVLINK_PORT_TYPE_NOTSET ;
 int __devlink_port_type_set (struct devlink_port*,int ,int *) ;
 int devlink_port_type_warn_schedule (struct devlink_port*) ;

void devlink_port_type_clear(struct devlink_port *devlink_port)
{
 __devlink_port_type_set(devlink_port, DEVLINK_PORT_TYPE_NOTSET, ((void*)0));
 devlink_port_type_warn_schedule(devlink_port);
}
