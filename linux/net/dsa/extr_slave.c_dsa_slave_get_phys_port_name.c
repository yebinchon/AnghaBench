
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct TYPE_2__ {scalar_t__ devlink; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 size_t snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int dsa_slave_get_phys_port_name(struct net_device *dev,
     char *name, size_t len)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);





 if (dp->ds->devlink)
  return -EOPNOTSUPP;

 if (snprintf(name, len, "p%d", dp->index) >= len)
  return -EINVAL;

 return 0;
}
