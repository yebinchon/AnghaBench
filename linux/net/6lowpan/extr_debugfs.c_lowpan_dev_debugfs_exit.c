
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int iface_debugfs; } ;


 int debugfs_remove_recursive (int ) ;
 TYPE_1__* lowpan_dev (struct net_device*) ;

void lowpan_dev_debugfs_exit(struct net_device *dev)
{
 debugfs_remove_recursive(lowpan_dev(dev)->iface_debugfs);
}
