
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta_info {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int BIT (int ) ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 int IEEE80211_STA_NONE ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int WLAN_STA_ASSOC ;
 int WLAN_STA_AUTH ;
 int WLAN_STA_AUTHORIZED ;
 int WLAN_STA_RATE_CONTROL ;
 int rate_control_rate_init (struct sta_info*) ;
 int sta_info_move_state (struct sta_info*,int ) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int sta_apply_auth_flags(struct ieee80211_local *local,
    struct sta_info *sta,
    u32 mask, u32 set)
{
 int ret;

 if (mask & BIT(NL80211_STA_FLAG_AUTHENTICATED) &&
     set & BIT(NL80211_STA_FLAG_AUTHENTICATED) &&
     !test_sta_flag(sta, WLAN_STA_AUTH)) {
  ret = sta_info_move_state(sta, IEEE80211_STA_AUTH);
  if (ret)
   return ret;
 }

 if (mask & BIT(NL80211_STA_FLAG_ASSOCIATED) &&
     set & BIT(NL80211_STA_FLAG_ASSOCIATED) &&
     !test_sta_flag(sta, WLAN_STA_ASSOC)) {





  if (!test_sta_flag(sta, WLAN_STA_RATE_CONTROL))
   rate_control_rate_init(sta);

  ret = sta_info_move_state(sta, IEEE80211_STA_ASSOC);
  if (ret)
   return ret;
 }

 if (mask & BIT(NL80211_STA_FLAG_AUTHORIZED)) {
  if (set & BIT(NL80211_STA_FLAG_AUTHORIZED))
   ret = sta_info_move_state(sta, IEEE80211_STA_AUTHORIZED);
  else if (test_sta_flag(sta, WLAN_STA_AUTHORIZED))
   ret = sta_info_move_state(sta, IEEE80211_STA_ASSOC);
  else
   ret = 0;
  if (ret)
   return ret;
 }

 if (mask & BIT(NL80211_STA_FLAG_ASSOCIATED) &&
     !(set & BIT(NL80211_STA_FLAG_ASSOCIATED)) &&
     test_sta_flag(sta, WLAN_STA_ASSOC)) {
  ret = sta_info_move_state(sta, IEEE80211_STA_AUTH);
  if (ret)
   return ret;
 }

 if (mask & BIT(NL80211_STA_FLAG_AUTHENTICATED) &&
     !(set & BIT(NL80211_STA_FLAG_AUTHENTICATED)) &&
     test_sta_flag(sta, WLAN_STA_AUTH)) {
  ret = sta_info_move_state(sta, IEEE80211_STA_NONE);
  if (ret)
   return ret;
 }

 return 0;
}
