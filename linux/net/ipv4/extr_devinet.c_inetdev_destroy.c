
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ip_ptr; } ;
struct in_ifaddr {int dummy; } ;
struct in_device {int dead; int rcu_head; int arp_parms; int ifa_list; struct net_device* dev; } ;


 int ASSERT_RTNL () ;
 int RCU_INIT_POINTER (int ,int *) ;
 int arp_ifdown (struct net_device*) ;
 int arp_tbl ;
 int call_rcu (int *,int ) ;
 int devinet_sysctl_unregister (struct in_device*) ;
 int in_dev_rcu_put ;
 int inet_del_ifa (struct in_device*,int *,int ) ;
 int inet_free_ifa (struct in_ifaddr*) ;
 int ip_mc_destroy_dev (struct in_device*) ;
 int neigh_parms_release (int *,int ) ;
 struct in_ifaddr* rtnl_dereference (int ) ;

__attribute__((used)) static void inetdev_destroy(struct in_device *in_dev)
{
 struct net_device *dev;
 struct in_ifaddr *ifa;

 ASSERT_RTNL();

 dev = in_dev->dev;

 in_dev->dead = 1;

 ip_mc_destroy_dev(in_dev);

 while ((ifa = rtnl_dereference(in_dev->ifa_list)) != ((void*)0)) {
  inet_del_ifa(in_dev, &in_dev->ifa_list, 0);
  inet_free_ifa(ifa);
 }

 RCU_INIT_POINTER(dev->ip_ptr, ((void*)0));

 devinet_sysctl_unregister(in_dev);
 neigh_parms_release(&arp_tbl, in_dev->arp_parms);
 arp_ifdown(dev);

 call_rcu(&in_dev->rcu_head, in_dev_rcu_put);
}
