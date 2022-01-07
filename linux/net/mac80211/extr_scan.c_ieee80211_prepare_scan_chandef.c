
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_chan_def {int width; } ;
typedef enum nl80211_bss_scan_width { ____Placeholder_nl80211_bss_scan_width } nl80211_bss_scan_width ;




 int NL80211_CHAN_WIDTH_10 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_5 ;
 int memset (struct cfg80211_chan_def*,int ,int) ;

__attribute__((used)) static void
ieee80211_prepare_scan_chandef(struct cfg80211_chan_def *chandef,
          enum nl80211_bss_scan_width scan_width)
{
 memset(chandef, 0, sizeof(*chandef));
 switch (scan_width) {
 case 128:
  chandef->width = NL80211_CHAN_WIDTH_5;
  break;
 case 129:
  chandef->width = NL80211_CHAN_WIDTH_10;
  break;
 default:
  chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
  break;
 }
}
