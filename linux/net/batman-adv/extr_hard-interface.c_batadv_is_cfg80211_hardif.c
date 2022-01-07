
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct batadv_hard_iface {int wifi_flags; } ;


 int BATADV_HARDIF_WIFI_CFG80211_DIRECT ;
 int BATADV_HARDIF_WIFI_CFG80211_INDIRECT ;

bool batadv_is_cfg80211_hardif(struct batadv_hard_iface *hard_iface)
{
 u32 allowed_flags = 0;

 allowed_flags |= BATADV_HARDIF_WIFI_CFG80211_DIRECT;
 allowed_flags |= BATADV_HARDIF_WIFI_CFG80211_INDIRECT;

 return !!(hard_iface->wifi_flags & allowed_flags);
}
