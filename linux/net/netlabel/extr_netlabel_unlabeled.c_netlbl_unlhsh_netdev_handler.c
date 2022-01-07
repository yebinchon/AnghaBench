
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netlbl_unlhsh_iface {int rcu; int list; scalar_t__ valid; } ;
struct net_device {int ifindex; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int call_rcu (int *,int ) ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int list_del_rcu (int *) ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netlbl_unlhsh_free_iface ;
 int netlbl_unlhsh_lock ;
 struct netlbl_unlhsh_iface* netlbl_unlhsh_search_iface (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int netlbl_unlhsh_netdev_handler(struct notifier_block *this,
     unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netlbl_unlhsh_iface *iface = ((void*)0);

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;


 if (event == NETDEV_DOWN) {
  spin_lock(&netlbl_unlhsh_lock);
  iface = netlbl_unlhsh_search_iface(dev->ifindex);
  if (iface != ((void*)0) && iface->valid) {
   iface->valid = 0;
   list_del_rcu(&iface->list);
  } else
   iface = ((void*)0);
  spin_unlock(&netlbl_unlhsh_lock);
 }

 if (iface != ((void*)0))
  call_rcu(&iface->rcu, netlbl_unlhsh_free_iface);

 return NOTIFY_DONE;
}
