
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct devlink_port {int dummy; } ;


 int DEVLINK_PORT_TYPE_IB ;
 int __devlink_port_type_set (struct devlink_port*,int ,struct ib_device*) ;

void devlink_port_type_ib_set(struct devlink_port *devlink_port,
         struct ib_device *ibdev)
{
 __devlink_port_type_set(devlink_port, DEVLINK_PORT_TYPE_IB, ibdev);
}
