
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vht_cap {int dummy; } ;


 int memset (struct ieee80211_vht_cap*,int ,int) ;

void cfg80211_oper_and_vht_capa(struct ieee80211_vht_cap *vht_capa,
    const struct ieee80211_vht_cap *vht_capa_mask)
{
 int i;
 u8 *p1, *p2;
 if (!vht_capa_mask) {
  memset(vht_capa, 0, sizeof(*vht_capa));
  return;
 }

 p1 = (u8*)(vht_capa);
 p2 = (u8*)(vht_capa_mask);
 for (i = 0; i < sizeof(*vht_capa); i++)
  p1[i] &= p2[i];
}
