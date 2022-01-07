
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_sta {int dummy; } ;
struct sta_info {struct ieee80211_sta sta; int uploaded; } ;
struct ieee80211_vif {int dummy; } ;


 struct sta_info* sta_info_get_bss (int ,int const*) ;
 int vif_to_sdata (struct ieee80211_vif*) ;

struct ieee80211_sta *ieee80211_find_sta(struct ieee80211_vif *vif,
      const u8 *addr)
{
 struct sta_info *sta;

 if (!vif)
  return ((void*)0);

 sta = sta_info_get_bss(vif_to_sdata(vif), addr);
 if (!sta)
  return ((void*)0);

 if (!sta->uploaded)
  return ((void*)0);

 return &sta->sta;
}
