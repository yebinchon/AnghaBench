
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ht_supported; } ;
struct ieee80211_sta {int bandwidth; TYPE_1__ ht_cap; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;






 int NL80211_CHAN_WIDTH_160 ;
 int NL80211_CHAN_WIDTH_20 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_40 ;
 int NL80211_CHAN_WIDTH_80 ;
 int WARN_ON (int) ;

enum nl80211_chan_width ieee80211_get_sta_bw(struct ieee80211_sta *sta)
{
 switch (sta->bandwidth) {
 case 130:
  if (sta->ht_cap.ht_supported)
   return NL80211_CHAN_WIDTH_20;
  else
   return NL80211_CHAN_WIDTH_20_NOHT;
 case 129:
  return NL80211_CHAN_WIDTH_40;
 case 128:
  return NL80211_CHAN_WIDTH_80;
 case 131:
  return NL80211_CHAN_WIDTH_160;
 default:
  WARN_ON(1);
  return NL80211_CHAN_WIDTH_20;
 }
}
