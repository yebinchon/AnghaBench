
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_tim_ie {int dtim_count; int dtim_period; } ;
struct ieee80211_bssid_index {int dtim_count; int dtim_period; } ;
struct cfg80211_bss_ies {int len; int data; } ;


 int WLAN_EID_MULTI_BSSID_IDX ;
 int WLAN_EID_TIM ;
 int* cfg80211_find_ie (int ,int ,int ) ;

__attribute__((used)) static bool ieee80211_get_dtim(const struct cfg80211_bss_ies *ies,
          u8 *dtim_count, u8 *dtim_period)
{
 const u8 *tim_ie = cfg80211_find_ie(WLAN_EID_TIM, ies->data, ies->len);
 const u8 *idx_ie = cfg80211_find_ie(WLAN_EID_MULTI_BSSID_IDX, ies->data,
      ies->len);
 const struct ieee80211_tim_ie *tim = ((void*)0);
 const struct ieee80211_bssid_index *idx;
 bool valid = tim_ie && tim_ie[1] >= 2;

 if (valid)
  tim = (void *)(tim_ie + 2);

 if (dtim_count)
  *dtim_count = valid ? tim->dtim_count : 0;

 if (dtim_period)
  *dtim_period = valid ? tim->dtim_period : 0;


 if (!idx_ie || idx_ie[1] < 3)
  return valid;

 idx = (void *)(idx_ie + 2);

 if (dtim_count)
  *dtim_count = idx->dtim_count;

 if (dtim_period)
  *dtim_period = idx->dtim_period;

 return 1;
}
