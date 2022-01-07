
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_reg_rule {int dummy; } ;


 int MHZ_TO_KHZ (int) ;
 struct ieee80211_reg_rule const* __freq_reg_info (struct wiphy*,int ,int ) ;

const struct ieee80211_reg_rule *freq_reg_info(struct wiphy *wiphy,
            u32 center_freq)
{
 return __freq_reg_info(wiphy, center_freq, MHZ_TO_KHZ(20));
}
