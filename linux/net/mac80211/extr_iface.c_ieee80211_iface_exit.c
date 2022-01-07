
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mac80211_netdev_notifier ;
 int unregister_netdevice_notifier (int *) ;

void ieee80211_iface_exit(void)
{
 unregister_netdevice_notifier(&mac80211_netdev_notifier);
}
