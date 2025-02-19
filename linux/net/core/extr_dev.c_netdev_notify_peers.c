
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NETDEV_NOTIFY_PEERS ;
 int NETDEV_RESEND_IGMP ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void netdev_notify_peers(struct net_device *dev)
{
 rtnl_lock();
 call_netdevice_notifiers(NETDEV_NOTIFY_PEERS, dev);
 call_netdevice_notifiers(NETDEV_RESEND_IGMP, dev);
 rtnl_unlock();
}
