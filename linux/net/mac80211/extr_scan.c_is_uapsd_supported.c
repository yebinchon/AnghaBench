
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_11_elems {int* wmm_info; int wmm_info_len; int* wmm_param; int wmm_param_len; } ;


 int IEEE80211_WMM_IE_AP_QOSINFO_UAPSD ;

__attribute__((used)) static bool is_uapsd_supported(struct ieee802_11_elems *elems)
{
 u8 qos_info;

 if (elems->wmm_info && elems->wmm_info_len == 7
     && elems->wmm_info[5] == 1)
  qos_info = elems->wmm_info[6];
 else if (elems->wmm_param && elems->wmm_param_len == 24
   && elems->wmm_param[5] == 1)
  qos_info = elems->wmm_param[6];
 else

  return 0;

 return qos_info & IEEE80211_WMM_IE_AP_QOSINFO_UAPSD;
}
