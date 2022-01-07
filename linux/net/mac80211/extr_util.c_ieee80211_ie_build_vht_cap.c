
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_sta_vht_cap {int vht_mcs; } ;
typedef int __le32 ;


 int WLAN_EID_VHT_CAPABILITY ;
 int cpu_to_le32 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

u8 *ieee80211_ie_build_vht_cap(u8 *pos, struct ieee80211_sta_vht_cap *vht_cap,
          u32 cap)
{
 __le32 tmp;

 *pos++ = WLAN_EID_VHT_CAPABILITY;
 *pos++ = sizeof(struct ieee80211_vht_cap);
 memset(pos, 0, sizeof(struct ieee80211_vht_cap));


 tmp = cpu_to_le32(cap);
 memcpy(pos, &tmp, sizeof(u32));
 pos += sizeof(u32);


 memcpy(pos, &vht_cap->vht_mcs, sizeof(vht_cap->vht_mcs));
 pos += sizeof(vht_cap->vht_mcs);

 return pos;
}
