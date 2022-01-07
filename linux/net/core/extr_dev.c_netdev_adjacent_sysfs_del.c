
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {struct list_head upper; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ adj_list; } ;


 int IFNAMSIZ ;
 int sprintf (char*,char*,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static void netdev_adjacent_sysfs_del(struct net_device *dev,
          char *name,
          struct list_head *dev_list)
{
 char linkname[IFNAMSIZ+7];

 sprintf(linkname, dev_list == &dev->adj_list.upper ?
  "upper_%s" : "lower_%s", name);
 sysfs_remove_link(&(dev->dev.kobj), linkname);
}
