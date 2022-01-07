
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_sta_ht_cap {int ampdu_factor; int ampdu_density; int mcs; } ;
struct ieee80211_ht_cap {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;


 int IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT ;
 int WLAN_EID_HT_CAPABILITY ;
 int cpu_to_le16 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

u8 *ieee80211_ie_build_ht_cap(u8 *pos, struct ieee80211_sta_ht_cap *ht_cap,
         u16 cap)
{
 __le16 tmp;

 *pos++ = WLAN_EID_HT_CAPABILITY;
 *pos++ = sizeof(struct ieee80211_ht_cap);
 memset(pos, 0, sizeof(struct ieee80211_ht_cap));


 tmp = cpu_to_le16(cap);
 memcpy(pos, &tmp, sizeof(u16));
 pos += sizeof(u16);


 *pos++ = ht_cap->ampdu_factor |
   (ht_cap->ampdu_density <<
   IEEE80211_HT_AMPDU_PARM_DENSITY_SHIFT);


 memcpy(pos, &ht_cap->mcs, sizeof(ht_cap->mcs));
 pos += sizeof(ht_cap->mcs);


 pos += sizeof(__le16);


 pos += sizeof(__le32);


 pos += sizeof(u8);

 return pos;
}
