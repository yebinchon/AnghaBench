
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_channel {int center_freq; } ;
struct TYPE_2__ {scalar_t__ channels; scalar_t__ bw_config; } ;
struct cfg80211_chan_def {int center_freq1; void* width; TYPE_1__ edmg; scalar_t__ center_freq2; struct ieee80211_channel* chan; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;






 void* NL80211_CHAN_WIDTH_20 ;
 void* NL80211_CHAN_WIDTH_20_NOHT ;
 void* NL80211_CHAN_WIDTH_40 ;
 scalar_t__ WARN_ON (int) ;

void cfg80211_chandef_create(struct cfg80211_chan_def *chandef,
        struct ieee80211_channel *chan,
        enum nl80211_channel_type chan_type)
{
 if (WARN_ON(!chan))
  return;

 chandef->chan = chan;
 chandef->center_freq2 = 0;
 chandef->edmg.bw_config = 0;
 chandef->edmg.channels = 0;

 switch (chan_type) {
 case 128:
  chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
  chandef->center_freq1 = chan->center_freq;
  break;
 case 131:
  chandef->width = NL80211_CHAN_WIDTH_20;
  chandef->center_freq1 = chan->center_freq;
  break;
 case 129:
  chandef->width = NL80211_CHAN_WIDTH_40;
  chandef->center_freq1 = chan->center_freq + 10;
  break;
 case 130:
  chandef->width = NL80211_CHAN_WIDTH_40;
  chandef->center_freq1 = chan->center_freq - 10;
  break;
 default:
  WARN_ON(1);
 }
}
