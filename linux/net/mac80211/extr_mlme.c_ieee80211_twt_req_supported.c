
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* mac_cap_info; } ;
struct TYPE_5__ {TYPE_1__ he_cap_elem; } ;
struct TYPE_6__ {TYPE_2__ he_cap; } ;
struct sta_info {TYPE_3__ sta; } ;
struct ieee802_11_elems {int ext_capab_len; int* ext_capab; } ;


 int IEEE80211_HE_MAC_CAP0_TWT_RES ;
 int WLAN_EXT_CAPA10_TWT_RESPONDER_SUPPORT ;

__attribute__((used)) static bool ieee80211_twt_req_supported(const struct sta_info *sta,
     const struct ieee802_11_elems *elems)
{
 if (elems->ext_capab_len < 10)
  return 0;

 if (!(elems->ext_capab[9] & WLAN_EXT_CAPA10_TWT_RESPONDER_SUPPORT))
  return 0;

 return sta->sta.he_cap.he_cap_elem.mac_cap_info[0] &
  IEEE80211_HE_MAC_CAP0_TWT_RES;
}
