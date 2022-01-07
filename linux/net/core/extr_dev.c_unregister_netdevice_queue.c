
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int unreg_list; } ;
struct list_head {int dummy; } ;


 int ASSERT_RTNL () ;
 int list_move_tail (int *,struct list_head*) ;
 int net_set_todo (struct net_device*) ;
 int rollback_registered (struct net_device*) ;

void unregister_netdevice_queue(struct net_device *dev, struct list_head *head)
{
 ASSERT_RTNL();

 if (head) {
  list_move_tail(&dev->unreg_list, head);
 } else {
  rollback_registered(dev);

  net_set_todo(dev);
 }
}
