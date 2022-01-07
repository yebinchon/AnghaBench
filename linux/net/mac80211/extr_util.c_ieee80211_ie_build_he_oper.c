
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_he_operation {int he_mcs_nss_set; int he_oper_params; } ;


 int IEEE80211_HE_OPERATION_BSS_COLOR_DISABLED ;
 int IEEE80211_HE_OPERATION_ER_SU_DISABLE ;
 int IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK ;
 int WLAN_EID_EXTENSION ;
 int WLAN_EID_EXT_HE_OPERATION ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int u32_encode_bits (int,int ) ;

u8 *ieee80211_ie_build_he_oper(u8 *pos)
{
 struct ieee80211_he_operation *he_oper;
 u32 he_oper_params;

 *pos++ = WLAN_EID_EXTENSION;
 *pos++ = 1 + sizeof(struct ieee80211_he_operation);
 *pos++ = WLAN_EID_EXT_HE_OPERATION;

 he_oper_params = 0;
 he_oper_params |= u32_encode_bits(1023,
    IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK);
 he_oper_params |= u32_encode_bits(1,
    IEEE80211_HE_OPERATION_ER_SU_DISABLE);
 he_oper_params |= u32_encode_bits(1,
    IEEE80211_HE_OPERATION_BSS_COLOR_DISABLED);

 he_oper = (struct ieee80211_he_operation *)pos;
 he_oper->he_oper_params = cpu_to_le32(he_oper_params);


 he_oper->he_mcs_nss_set = cpu_to_le16(0xffff);



 return pos + sizeof(struct ieee80211_vht_operation);
}
