
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int tx_mcs_map; int rx_mcs_map; } ;
struct ieee80211_vht_cap {int vht_cap_info; TYPE_1__ supp_mcs; } ;
typedef enum ieee80211_vht_chanwidth { ____Placeholder_ieee80211_vht_chanwidth } ieee80211_vht_chanwidth ;


 int IEEE80211_VHT_CAP_EXT_NSS_BW_MASK ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ;




 int IEEE80211_VHT_EXT_NSS_BW_CAPABLE ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;
 int le32_get_bits (int ,int ) ;

int ieee80211_get_vht_max_nss(struct ieee80211_vht_cap *cap,
         enum ieee80211_vht_chanwidth bw,
         int mcs, bool ext_nss_bw_capable)
{
 u16 map = le16_to_cpu(cap->supp_mcs.rx_mcs_map);
 int max_vht_nss = 0;
 int ext_nss_bw;
 int supp_width;
 int i, mcs_encoding;

 if (map == 0xffff)
  return 0;

 if (WARN_ON(mcs > 9))
  return 0;
 if (mcs <= 7)
  mcs_encoding = 0;
 else if (mcs == 8)
  mcs_encoding = 1;
 else
  mcs_encoding = 2;


 for (i = 7; i >= 0; i--) {
  int supp = (map >> (2 * i)) & 3;

  if (supp == 3)
   continue;

  if (supp >= mcs_encoding) {
   max_vht_nss = i + 1;
   break;
  }
 }

 if (!(cap->supp_mcs.tx_mcs_map &
   cpu_to_le16(IEEE80211_VHT_EXT_NSS_BW_CAPABLE)))
  return max_vht_nss;

 ext_nss_bw = le32_get_bits(cap->vht_cap_info,
       IEEE80211_VHT_CAP_EXT_NSS_BW_MASK);
 supp_width = le32_get_bits(cap->vht_cap_info,
       IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK);


 if (!ext_nss_bw_capable)
  ext_nss_bw = 0;


 if (supp_width == 3)
  return 0;


 if (supp_width == 2 && (ext_nss_bw == 1 || ext_nss_bw == 2))
  return 0;






 switch (bw) {
 case 128:
 case 130:
  if ((supp_width == 1 || supp_width == 2) &&
      ext_nss_bw == 3)
   return 2 * max_vht_nss;
  break;
 case 131:
  if (supp_width == 0 &&
      (ext_nss_bw == 1 || ext_nss_bw == 2))
   return max_vht_nss / 2;
  if (supp_width == 0 &&
      ext_nss_bw == 3)
   return (3 * max_vht_nss) / 4;
  if (supp_width == 1 &&
      ext_nss_bw == 3)
   return 2 * max_vht_nss;
  break;
 case 129:
  if (supp_width == 0 && ext_nss_bw == 1)
   return 0;
  if (supp_width == 0 &&
      ext_nss_bw == 2)
   return max_vht_nss / 2;
  if (supp_width == 0 &&
      ext_nss_bw == 3)
   return (3 * max_vht_nss) / 4;
  if (supp_width == 1 &&
      ext_nss_bw == 0)
   return 0;
  if (supp_width == 1 &&
      ext_nss_bw == 1)
   return max_vht_nss / 2;
  if (supp_width == 1 &&
      ext_nss_bw == 2)
   return (3 * max_vht_nss) / 4;
  break;
 }


 return max_vht_nss;
}
