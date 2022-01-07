
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s8 ;


 int BIT (int) ;
 int NL80211_VHT_NSS_MAX ;

__attribute__((used)) static bool rate_idx_match_vht_mcs_mask(s8 *rate_idx, u16 *vht_mask)
{
 int i, j;
 int ridx, rbit;

 ridx = *rate_idx >> 4;
 rbit = *rate_idx & 0xf;

 if (ridx < 0 || ridx >= NL80211_VHT_NSS_MAX)
  return 0;


 for (i = ridx; i >= 0; i--) {
  for (j = rbit; j >= 0; j--) {
   if (vht_mask[i] & BIT(j)) {
    *rate_idx = (i << 4) | j;
    return 1;
   }
  }
  rbit = 15;
 }


 ridx = (*rate_idx + 1) >> 4;
 rbit = (*rate_idx + 1) & 0xf;

 for (i = ridx; i < NL80211_VHT_NSS_MAX; i++) {
  for (j = rbit; j < 16; j++) {
   if (vht_mask[i] & BIT(j)) {
    *rate_idx = (i << 4) | j;
    return 1;
   }
  }
  rbit = 0;
 }
 return 0;
}
