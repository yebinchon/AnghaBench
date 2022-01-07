
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_chan_def {int width; int center_freq1; int center_freq2; TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;
 scalar_t__ cfg80211_chandef_is_edmg (struct cfg80211_chan_def const*) ;
 int cfg80211_edmg_chandef_valid (struct cfg80211_chan_def const*) ;

bool cfg80211_chandef_valid(const struct cfg80211_chan_def *chandef)
{
 u32 control_freq;

 if (!chandef->chan)
  return 0;

 control_freq = chandef->chan->center_freq;

 switch (chandef->width) {
 case 130:
 case 135:
 case 133:
 case 132:
  if (chandef->center_freq1 != control_freq)
   return 0;
  if (chandef->center_freq2)
   return 0;
  break;
 case 131:
  if (chandef->center_freq1 != control_freq + 10 &&
      chandef->center_freq1 != control_freq - 10)
   return 0;
  if (chandef->center_freq2)
   return 0;
  break;
 case 128:
  if (chandef->center_freq1 != control_freq + 30 &&
      chandef->center_freq1 != control_freq + 10 &&
      chandef->center_freq1 != control_freq - 10 &&
      chandef->center_freq1 != control_freq - 30)
   return 0;
  if (!chandef->center_freq2)
   return 0;

  if (chandef->center_freq1 - chandef->center_freq2 == 80 ||
      chandef->center_freq2 - chandef->center_freq1 == 80)
   return 0;
  break;
 case 129:
  if (chandef->center_freq1 != control_freq + 30 &&
      chandef->center_freq1 != control_freq + 10 &&
      chandef->center_freq1 != control_freq - 10 &&
      chandef->center_freq1 != control_freq - 30)
   return 0;
  if (chandef->center_freq2)
   return 0;
  break;
 case 134:
  if (chandef->center_freq1 != control_freq + 70 &&
      chandef->center_freq1 != control_freq + 50 &&
      chandef->center_freq1 != control_freq + 30 &&
      chandef->center_freq1 != control_freq + 10 &&
      chandef->center_freq1 != control_freq - 10 &&
      chandef->center_freq1 != control_freq - 30 &&
      chandef->center_freq1 != control_freq - 50 &&
      chandef->center_freq1 != control_freq - 70)
   return 0;
  if (chandef->center_freq2)
   return 0;
  break;
 default:
  return 0;
 }


 if (chandef->center_freq1 == 2484 &&
     chandef->width != 132)
  return 0;

 if (cfg80211_chandef_is_edmg(chandef) &&
     !cfg80211_edmg_chandef_valid(chandef))
  return 0;

 return 1;
}
