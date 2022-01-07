
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {int list; int iftype; struct net_device* netdev; int identifier; int wpan_phy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int features; struct wpan_dev* ieee802154_ptr; } ;
struct cfg802154_registered_device {int devlist_generation; int opencount; int dev_wait; int wpan_dev_list; int wpan_dev_id; } ;


 int INIT_LIST_HEAD (int *) ;




 int NETIF_F_NETNS_LOCAL ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int cfg802154_update_iface_num (struct cfg802154_registered_device*,int ,int) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int synchronize_rcu () ;
 int wake_up (int *) ;
 struct cfg802154_registered_device* wpan_phy_to_rdev (int ) ;

__attribute__((used)) static int cfg802154_netdev_notifier_call(struct notifier_block *nb,
       unsigned long state, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct wpan_dev *wpan_dev = dev->ieee802154_ptr;
 struct cfg802154_registered_device *rdev;

 if (!wpan_dev)
  return NOTIFY_DONE;

 rdev = wpan_phy_to_rdev(wpan_dev->wpan_phy);



 switch (state) {

 case 130:
  dev->features |= NETIF_F_NETNS_LOCAL;
  wpan_dev->identifier = ++rdev->wpan_dev_id;
  list_add_rcu(&wpan_dev->list, &rdev->wpan_dev_list);
  rdev->devlist_generation++;

  wpan_dev->netdev = dev;
  break;
 case 131:
  cfg802154_update_iface_num(rdev, wpan_dev->iftype, -1);

  rdev->opencount--;
  wake_up(&rdev->dev_wait);
  break;
 case 128:
  cfg802154_update_iface_num(rdev, wpan_dev->iftype, 1);

  rdev->opencount++;
  break;
 case 129:






  if (!list_empty(&wpan_dev->list)) {
   list_del_rcu(&wpan_dev->list);
   rdev->devlist_generation++;
  }





  synchronize_rcu();
  INIT_LIST_HEAD(&wpan_dev->list);
  break;
 default:
  return NOTIFY_DONE;
 }

 return NOTIFY_OK;
}
