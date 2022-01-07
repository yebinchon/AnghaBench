
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_channel {scalar_t__ center_freq; } ;
struct cfg80211_chan_def {int center_freq1; int center_freq2; TYPE_1__* chan; } ;
struct TYPE_2__ {scalar_t__ center_freq; } ;


 int cfg80211_chandef_get_width (struct cfg80211_chan_def*) ;

bool cfg80211_is_sub_chan(struct cfg80211_chan_def *chandef,
     struct ieee80211_channel *chan)
{
 int width;
 u32 freq;

 if (chandef->chan->center_freq == chan->center_freq)
  return 1;

 width = cfg80211_chandef_get_width(chandef);
 if (width <= 20)
  return 0;

 for (freq = chandef->center_freq1 - width / 2 + 10;
      freq <= chandef->center_freq1 + width / 2 - 10; freq += 20) {
  if (chan->center_freq == freq)
   return 1;
 }

 if (!chandef->center_freq2)
  return 0;

 for (freq = chandef->center_freq2 - width / 2 + 10;
      freq <= chandef->center_freq2 + width / 2 - 10; freq += 20) {
  if (chan->center_freq == freq)
   return 1;
 }

 return 0;
}
