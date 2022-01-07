
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_ht_cap {int dummy; } ;


 int memset (struct ieee80211_ht_cap*,int ,int) ;

void cfg80211_oper_and_ht_capa(struct ieee80211_ht_cap *ht_capa,
          const struct ieee80211_ht_cap *ht_capa_mask)
{
 int i;
 u8 *p1, *p2;
 if (!ht_capa_mask) {
  memset(ht_capa, 0, sizeof(*ht_capa));
  return;
 }

 p1 = (u8*)(ht_capa);
 p2 = (u8*)(ht_capa_mask);
 for (i = 0; i < sizeof(*ht_capa); i++)
  p1[i] &= p2[i];
}
