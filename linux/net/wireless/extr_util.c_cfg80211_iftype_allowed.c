
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int flags; int interface_modes; int software_iftypes; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int BIT (int) ;
 int NL80211_IFTYPE_AP_VLAN ;
 int WIPHY_FLAG_4ADDR_AP ;

bool cfg80211_iftype_allowed(struct wiphy *wiphy, enum nl80211_iftype iftype,
        bool is_4addr, u8 check_swif)

{
 bool is_vlan = iftype == NL80211_IFTYPE_AP_VLAN;

 switch (check_swif) {
 case 0:
  if (is_vlan && is_4addr)
   return wiphy->flags & WIPHY_FLAG_4ADDR_AP;
  return wiphy->interface_modes & BIT(iftype);
 case 1:
  if (!(wiphy->software_iftypes & BIT(iftype)) && is_vlan)
   return wiphy->flags & WIPHY_FLAG_4ADDR_AP;
  return wiphy->software_iftypes & BIT(iftype);
 default:
  break;
 }

 return 0;
}
