
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ dev_get_port_parent_id (struct net_device*,struct netdev_phys_item_id*,int) ;
 int netdev_phys_item_id_same (struct netdev_phys_item_id*,struct netdev_phys_item_id*) ;

bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b)
{
 struct netdev_phys_item_id a_id = { };
 struct netdev_phys_item_id b_id = { };

 if (dev_get_port_parent_id(a, &a_id, 1) ||
     dev_get_port_parent_id(b, &b_id, 1))
  return 0;

 return netdev_phys_item_id_same(&a_id, &b_id);
}
