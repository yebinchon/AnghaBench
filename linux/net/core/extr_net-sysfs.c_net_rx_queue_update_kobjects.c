
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int sysfs_rx_queue_group; TYPE_1__* _rx; } ;
struct kobject {int uevent_suppress; } ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {struct kobject kobj; } ;


 TYPE_2__* dev_net (struct net_device*) ;
 int kobject_put (struct kobject*) ;
 int refcount_read (int *) ;
 int rx_queue_add_kobject (struct net_device*,int) ;
 int sysfs_remove_group (struct kobject*,int ) ;

int
net_rx_queue_update_kobjects(struct net_device *dev, int old_num, int new_num)
{
 return 0;

}
