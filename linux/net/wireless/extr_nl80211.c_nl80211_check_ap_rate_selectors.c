
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_ap_settings {int ht_required; int vht_required; } ;


 int const BSS_MEMBERSHIP_SELECTOR_HT_PHY ;
 int const BSS_MEMBERSHIP_SELECTOR_VHT_PHY ;

__attribute__((used)) static void nl80211_check_ap_rate_selectors(struct cfg80211_ap_settings *params,
         const u8 *rates)
{
 int i;

 if (!rates)
  return;

 for (i = 0; i < rates[1]; i++) {
  if (rates[2 + i] == BSS_MEMBERSHIP_SELECTOR_HT_PHY)
   params->ht_required = 1;
  if (rates[2 + i] == BSS_MEMBERSHIP_SELECTOR_VHT_PHY)
   params->vht_required = 1;
 }
}
