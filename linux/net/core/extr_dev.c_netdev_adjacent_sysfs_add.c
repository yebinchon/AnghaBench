
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {struct list_head upper; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ adj_list; int name; } ;


 int IFNAMSIZ ;
 int sprintf (char*,char*,int ) ;
 int sysfs_create_link (int *,int *,char*) ;

__attribute__((used)) static int netdev_adjacent_sysfs_add(struct net_device *dev,
         struct net_device *adj_dev,
         struct list_head *dev_list)
{
 char linkname[IFNAMSIZ+7];

 sprintf(linkname, dev_list == &dev->adj_list.upper ?
  "upper_%s" : "lower_%s", adj_dev->name);
 return sysfs_create_link(&(dev->dev.kobj), &(adj_dev->dev.kobj),
     linkname);
}
