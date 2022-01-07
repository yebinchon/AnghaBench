
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BATADV_HARDIF_WIFI_CFG80211_DIRECT ;
 int BATADV_HARDIF_WIFI_CFG80211_INDIRECT ;
 int BATADV_HARDIF_WIFI_WEXT_DIRECT ;
 int BATADV_HARDIF_WIFI_WEXT_INDIRECT ;
 struct net_device* batadv_get_real_netdevice (struct net_device*) ;
 scalar_t__ batadv_is_cfg80211_netdev (struct net_device*) ;
 scalar_t__ batadv_is_wext_netdev (struct net_device*) ;
 int dev_put (struct net_device*) ;

__attribute__((used)) static u32 batadv_wifi_flags_evaluate(struct net_device *net_device)
{
 u32 wifi_flags = 0;
 struct net_device *real_netdev;

 if (batadv_is_wext_netdev(net_device))
  wifi_flags |= BATADV_HARDIF_WIFI_WEXT_DIRECT;

 if (batadv_is_cfg80211_netdev(net_device))
  wifi_flags |= BATADV_HARDIF_WIFI_CFG80211_DIRECT;

 real_netdev = batadv_get_real_netdevice(net_device);
 if (!real_netdev)
  return wifi_flags;

 if (real_netdev == net_device)
  goto out;

 if (batadv_is_wext_netdev(real_netdev))
  wifi_flags |= BATADV_HARDIF_WIFI_WEXT_INDIRECT;

 if (batadv_is_cfg80211_netdev(real_netdev))
  wifi_flags |= BATADV_HARDIF_WIFI_CFG80211_INDIRECT;

out:
 dev_put(real_netdev);
 return wifi_flags;
}
