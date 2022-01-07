
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_2__ {int phy_cap_info; } ;
struct ieee80211_sta_he_cap {TYPE_1__ he_cap_elem; int * ppe_thres; } ;


 struct ieee80211_sta_he_cap* ieee80211_get_he_sta_cap (struct ieee80211_supported_band*) ;
 int ieee80211_he_mcs_nss_size (TYPE_1__*) ;
 int ieee80211_he_ppe_size (int ,int ) ;
 int ieee80211_ie_build_he_cap (int*,struct ieee80211_sta_he_cap const*,int*) ;
 int* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_add_he_ie(struct ieee80211_sub_if_data *sdata,
    struct sk_buff *skb,
    struct ieee80211_supported_band *sband)
{
 u8 *pos;
 const struct ieee80211_sta_he_cap *he_cap = ((void*)0);
 u8 he_cap_size;

 he_cap = ieee80211_get_he_sta_cap(sband);
 if (!he_cap)
  return;





 he_cap_size =
  2 + 1 + sizeof(he_cap->he_cap_elem) +
  ieee80211_he_mcs_nss_size(&he_cap->he_cap_elem) +
  ieee80211_he_ppe_size(he_cap->ppe_thres[0],
          he_cap->he_cap_elem.phy_cap_info);
 pos = skb_put(skb, he_cap_size);
 ieee80211_ie_build_he_cap(pos, he_cap, pos + he_cap_size);
}
