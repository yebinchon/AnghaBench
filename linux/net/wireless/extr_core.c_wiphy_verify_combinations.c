
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct wiphy {int n_iface_combinations; int software_iftypes; int interface_modes; struct ieee80211_iface_combination* iface_combinations; } ;
struct ieee80211_iface_combination {int max_interfaces; int num_different_channels; int n_limits; TYPE_1__* limits; scalar_t__ beacon_int_min_gcd; scalar_t__ radar_detect_widths; } ;
struct TYPE_2__ {int types; int max; } ;


 int BIT (int ) ;
 int CFG80211_MAX_NUM_DIFFERENT_CHANNELS ;
 int EINVAL ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_NAN ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int NL80211_IFTYPE_WDS ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int wiphy_verify_combinations(struct wiphy *wiphy)
{
 const struct ieee80211_iface_combination *c;
 int i, j;

 for (i = 0; i < wiphy->n_iface_combinations; i++) {
  u32 cnt = 0;
  u16 all_iftypes = 0;

  c = &wiphy->iface_combinations[i];





  if (WARN_ON((c->max_interfaces < 2) && !c->radar_detect_widths))
   return -EINVAL;


  if (WARN_ON(!c->num_different_channels))
   return -EINVAL;





  if (WARN_ON(c->num_different_channels >
    CFG80211_MAX_NUM_DIFFERENT_CHANNELS))
   return -EINVAL;


  if (WARN_ON(c->radar_detect_widths &&
       (c->num_different_channels > 1)))
   return -EINVAL;

  if (WARN_ON(!c->n_limits))
   return -EINVAL;

  for (j = 0; j < c->n_limits; j++) {
   u16 types = c->limits[j].types;


   if (WARN_ON(types & all_iftypes))
    return -EINVAL;
   all_iftypes |= types;

   if (WARN_ON(!c->limits[j].max))
    return -EINVAL;


   if (WARN_ON(wiphy->software_iftypes & types))
    return -EINVAL;


   if (WARN_ON(types & BIT(NL80211_IFTYPE_P2P_DEVICE) &&
        c->limits[j].max > 1))
    return -EINVAL;


   if (WARN_ON(types & BIT(NL80211_IFTYPE_NAN) &&
        c->limits[j].max > 1))
    return -EINVAL;
   if (WARN_ON(types & BIT(NL80211_IFTYPE_ADHOC) &&
        c->beacon_int_min_gcd)) {
    return -EINVAL;
   }

   cnt += c->limits[j].max;




   if (WARN_ON((wiphy->interface_modes & types) != types))
    return -EINVAL;
  }


  if (WARN_ON(all_iftypes & BIT(NL80211_IFTYPE_WDS)))
   return -EINVAL;



  if (WARN_ON(cnt < c->max_interfaces))
   return -EINVAL;
 }

 return 0;
}
