
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_reg_rule {int dummy; } ;


 int IS_ERR (struct ieee80211_reg_rule const*) ;
 int MHZ_TO_KHZ (int) ;
 struct ieee80211_reg_rule* freq_reg_info_regd (int,struct ieee80211_regdomain const*,int) ;
 struct ieee80211_regdomain* reg_get_regdomain (struct wiphy*) ;

__attribute__((used)) static const struct ieee80211_reg_rule *
__freq_reg_info(struct wiphy *wiphy, u32 center_freq, u32 min_bw)
{
 const struct ieee80211_regdomain *regd = reg_get_regdomain(wiphy);
 const struct ieee80211_reg_rule *reg_rule = ((void*)0);
 u32 bw;

 for (bw = MHZ_TO_KHZ(20); bw >= min_bw; bw = bw / 2) {
  reg_rule = freq_reg_info_regd(center_freq, regd, bw);
  if (!IS_ERR(reg_rule))
   return reg_rule;
 }

 return reg_rule;
}
