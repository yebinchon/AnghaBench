
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;


 size_t NL80211_VHT_NSS_MAX ;
 int vht_mcs_map_to_mcs_mask (int) ;

__attribute__((used)) static void vht_build_mcs_mask(u16 vht_mcs_map,
          u16 vht_mcs_mask[NL80211_VHT_NSS_MAX])
{
 u8 nss;

 for (nss = 0; nss < NL80211_VHT_NSS_MAX; nss++) {
  vht_mcs_mask[nss] = vht_mcs_map_to_mcs_mask(vht_mcs_map & 0x03);
  vht_mcs_map >>= 2;
 }
}
