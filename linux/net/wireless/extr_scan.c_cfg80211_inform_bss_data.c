
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct cfg80211_non_tx_bss {struct cfg80211_bss* tx_bss; } ;
struct cfg80211_inform_bss {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
typedef int gfp_t ;
typedef enum cfg80211_bss_frame_type { ____Placeholder_cfg80211_bss_frame_type } cfg80211_bss_frame_type ;


 struct cfg80211_bss* cfg80211_inform_single_bss_data (struct wiphy*,struct cfg80211_inform_bss*,int,int const*,int ,int ,int ,int const*,size_t,int *,int ) ;
 int cfg80211_parse_mbssid_data (struct wiphy*,struct cfg80211_inform_bss*,int,int const*,int ,int ,int const*,size_t,struct cfg80211_non_tx_bss*,int ) ;

struct cfg80211_bss *
cfg80211_inform_bss_data(struct wiphy *wiphy,
    struct cfg80211_inform_bss *data,
    enum cfg80211_bss_frame_type ftype,
    const u8 *bssid, u64 tsf, u16 capability,
    u16 beacon_interval, const u8 *ie, size_t ielen,
    gfp_t gfp)
{
 struct cfg80211_bss *res;
 struct cfg80211_non_tx_bss non_tx_data;

 res = cfg80211_inform_single_bss_data(wiphy, data, ftype, bssid, tsf,
           capability, beacon_interval, ie,
           ielen, ((void*)0), gfp);
 if (!res)
  return ((void*)0);
 non_tx_data.tx_bss = res;
 cfg80211_parse_mbssid_data(wiphy, data, ftype, bssid, tsf,
       beacon_interval, ie, ielen, &non_tx_data,
       gfp);
 return res;
}
