
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* real_dev; } ;
struct TYPE_3__ {int name; } ;


 int strncpy (char*,int ,int) ;
 TYPE_2__* vlan_dev_priv (struct net_device const*) ;

void vlan_dev_get_realdev_name(const struct net_device *dev, char *result)
{
 strncpy(result, vlan_dev_priv(dev)->real_dev->name, 23);
}
