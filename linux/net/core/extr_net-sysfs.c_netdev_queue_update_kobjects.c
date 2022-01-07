
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uevent_suppress; } ;
struct netdev_queue {TYPE_1__ kobj; } ;
struct net_device {struct netdev_queue* _tx; } ;
struct TYPE_5__ {int count; } ;


 TYPE_3__* dev_net (struct net_device*) ;
 int dql_group ;
 int kobject_put (TYPE_1__*) ;
 int netdev_queue_add_kobject (struct net_device*,int) ;
 int refcount_read (int *) ;
 int sysfs_remove_group (TYPE_1__*,int *) ;

int
netdev_queue_update_kobjects(struct net_device *dev, int old_num, int new_num)
{
 return 0;

}
