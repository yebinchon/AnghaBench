
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ieee80211_ptr; } ;



__attribute__((used)) static bool batadv_is_cfg80211_netdev(struct net_device *net_device)
{
 if (!net_device)
  return 0;


 if (net_device->ieee80211_ptr)
  return 1;

 return 0;
}
