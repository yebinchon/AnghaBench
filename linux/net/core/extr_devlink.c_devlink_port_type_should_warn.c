
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flavour; } ;
struct devlink_port {TYPE_1__ attrs; } ;


 scalar_t__ DEVLINK_PORT_FLAVOUR_CPU ;
 scalar_t__ DEVLINK_PORT_FLAVOUR_DSA ;

__attribute__((used)) static bool devlink_port_type_should_warn(struct devlink_port *devlink_port)
{

 return devlink_port->attrs.flavour != DEVLINK_PORT_FLAVOUR_CPU &&
        devlink_port->attrs.flavour != DEVLINK_PORT_FLAVOUR_DSA;
}
