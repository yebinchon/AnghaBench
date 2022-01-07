
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int * phy_cap_info; int * mac_cap_info; } ;
struct ieee80211_sta_he_cap {int * ppe_thres; int he_mcs_nss_supp; TYPE_1__ he_cap_elem; scalar_t__ has_he; } ;
struct ieee80211_sband_iftype_data {int types_mask; struct ieee80211_sta_he_cap he_cap; } ;


 int ENOBUFS ;
 int NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC ;
 int NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET ;
 int NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY ;
 int NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE ;
 int NL80211_BAND_IFTYPE_ATTR_IFTYPES ;
 scalar_t__ nl80211_put_iftypes (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int
nl80211_send_iftype_data(struct sk_buff *msg,
    const struct ieee80211_sband_iftype_data *iftdata)
{
 const struct ieee80211_sta_he_cap *he_cap = &iftdata->he_cap;

 if (nl80211_put_iftypes(msg, NL80211_BAND_IFTYPE_ATTR_IFTYPES,
    iftdata->types_mask))
  return -ENOBUFS;

 if (he_cap->has_he) {
  if (nla_put(msg, NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC,
       sizeof(he_cap->he_cap_elem.mac_cap_info),
       he_cap->he_cap_elem.mac_cap_info) ||
      nla_put(msg, NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY,
       sizeof(he_cap->he_cap_elem.phy_cap_info),
       he_cap->he_cap_elem.phy_cap_info) ||
      nla_put(msg, NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET,
       sizeof(he_cap->he_mcs_nss_supp),
       &he_cap->he_mcs_nss_supp) ||
      nla_put(msg, NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE,
       sizeof(he_cap->ppe_thres), he_cap->ppe_thres))
   return -ENOBUFS;
 }

 return 0;
}
