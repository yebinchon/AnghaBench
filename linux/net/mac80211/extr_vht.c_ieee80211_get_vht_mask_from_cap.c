
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;






 int NL80211_VHT_NSS_MAX ;
 int le16_to_cpu (int ) ;

void ieee80211_get_vht_mask_from_cap(__le16 vht_cap,
         u16 vht_mask[NL80211_VHT_NSS_MAX])
{
 int i;
 u16 mask, cap = le16_to_cpu(vht_cap);

 for (i = 0; i < NL80211_VHT_NSS_MAX; i++) {
  mask = (cap >> i * 2) & 131;
  switch (mask) {
  case 130:
   vht_mask[i] = 0x00FF;
   break;
  case 129:
   vht_mask[i] = 0x01FF;
   break;
  case 128:
   vht_mask[i] = 0x03FF;
   break;
  case 131:
  default:
   vht_mask[i] = 0;
   break;
  }
 }
}
