
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_ht_cap {int cap_info; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static void __check_htcap_disable(struct ieee80211_ht_cap *ht_capa,
      struct ieee80211_ht_cap *ht_capa_mask,
      struct ieee80211_sta_ht_cap *ht_cap,
      u16 flag)
{
 __le16 le_flag = cpu_to_le16(flag);
 if (ht_capa_mask->cap_info & le_flag) {
  if (!(ht_capa->cap_info & le_flag))
   ht_cap->cap &= ~flag;
 }
}
