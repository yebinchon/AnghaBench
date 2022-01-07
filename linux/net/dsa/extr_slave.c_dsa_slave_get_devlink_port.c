
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;
struct dsa_port {struct devlink_port devlink_port; TYPE_1__* ds; } ;
struct TYPE_2__ {scalar_t__ devlink; } ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;

__attribute__((used)) static struct devlink_port *dsa_slave_get_devlink_port(struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);

 return dp->ds->devlink ? &dp->devlink_port : ((void*)0);
}
