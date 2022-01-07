
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {int features; scalar_t__ reg_state; int ifindex; int name; TYPE_1__ dev; } ;
struct net {int dummy; } ;


 int ASSERT_RTNL () ;
 int EEXIST ;
 int EINVAL ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int KOBJ_REMOVE ;
 int NETDEV_REGISTER ;
 int NETDEV_UNREGISTER ;
 int NETIF_F_NETNS_LOCAL ;
 scalar_t__ NETREG_REGISTERED ;
 int RTM_DELLINK ;
 int RTM_NEWLINK ;
 int WARN_ON (int) ;
 scalar_t__ __dev_get_by_index (struct net*,int) ;
 scalar_t__ __dev_get_by_name (struct net*,int ) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_close (struct net_device*) ;
 int dev_get_valid_name (struct net*,struct net_device*,char const*) ;
 int dev_mc_flush (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int dev_new_index (struct net*) ;
 int dev_shutdown (struct net_device*) ;
 int dev_uc_flush (struct net_device*) ;
 int device_rename (TYPE_1__*,int ) ;
 int kobject_uevent (int *,int ) ;
 int list_netdevice (struct net_device*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 int netdev_adjacent_add_links (struct net_device*) ;
 int netdev_adjacent_del_links (struct net_device*) ;
 int peernet2id_alloc (int ,struct net*,int ) ;
 int rcu_barrier () ;
 int rtmsg_ifinfo (int ,struct net_device*,unsigned int,int ) ;
 int rtmsg_ifinfo_newnet (int ,struct net_device*,unsigned int,int ,int*,int) ;
 int synchronize_net () ;
 int unlist_netdevice (struct net_device*) ;

int dev_change_net_namespace(struct net_device *dev, struct net *net, const char *pat)
{
 int err, new_nsid, new_ifindex;

 ASSERT_RTNL();


 err = -EINVAL;
 if (dev->features & NETIF_F_NETNS_LOCAL)
  goto out;


 if (dev->reg_state != NETREG_REGISTERED)
  goto out;


 err = 0;
 if (net_eq(dev_net(dev), net))
  goto out;




 err = -EEXIST;
 if (__dev_get_by_name(net, dev->name)) {

  if (!pat)
   goto out;
  err = dev_get_valid_name(net, dev, pat);
  if (err < 0)
   goto out;
 }






 dev_close(dev);


 unlist_netdevice(dev);

 synchronize_net();


 dev_shutdown(dev);
 call_netdevice_notifiers(NETDEV_UNREGISTER, dev);
 rcu_barrier();

 new_nsid = peernet2id_alloc(dev_net(dev), net, GFP_KERNEL);

 if (__dev_get_by_index(net, dev->ifindex))
  new_ifindex = dev_new_index(net);
 else
  new_ifindex = dev->ifindex;

 rtmsg_ifinfo_newnet(RTM_DELLINK, dev, ~0U, GFP_KERNEL, &new_nsid,
       new_ifindex);




 dev_uc_flush(dev);
 dev_mc_flush(dev);


 kobject_uevent(&dev->dev.kobj, KOBJ_REMOVE);
 netdev_adjacent_del_links(dev);


 dev_net_set(dev, net);
 dev->ifindex = new_ifindex;


 kobject_uevent(&dev->dev.kobj, KOBJ_ADD);
 netdev_adjacent_add_links(dev);


 err = device_rename(&dev->dev, dev->name);
 WARN_ON(err);


 list_netdevice(dev);


 call_netdevice_notifiers(NETDEV_REGISTER, dev);





 rtmsg_ifinfo(RTM_NEWLINK, dev, ~0U, GFP_KERNEL);

 synchronize_net();
 err = 0;
out:
 return err;
}
