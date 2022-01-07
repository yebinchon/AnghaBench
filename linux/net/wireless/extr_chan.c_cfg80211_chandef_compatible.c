
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cfg80211_chan_def {scalar_t__ chan; scalar_t__ width; } ;


 scalar_t__ NL80211_CHAN_WIDTH_10 ;
 scalar_t__ NL80211_CHAN_WIDTH_20 ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 scalar_t__ NL80211_CHAN_WIDTH_5 ;
 int WARN_ON (int) ;
 scalar_t__ cfg80211_chandef_identical (struct cfg80211_chan_def const*,struct cfg80211_chan_def const*) ;
 int chandef_primary_freqs (struct cfg80211_chan_def const*,scalar_t__*,scalar_t__*) ;

const struct cfg80211_chan_def *
cfg80211_chandef_compatible(const struct cfg80211_chan_def *c1,
       const struct cfg80211_chan_def *c2)
{
 u32 c1_pri40, c1_pri80, c2_pri40, c2_pri80;


 if (cfg80211_chandef_identical(c1, c2))
  return c1;


 if (c1->chan != c2->chan)
  return ((void*)0);





 if (c1->width == c2->width)
  return ((void*)0);





 if (c1->width == NL80211_CHAN_WIDTH_5 ||
     c1->width == NL80211_CHAN_WIDTH_10 ||
     c2->width == NL80211_CHAN_WIDTH_5 ||
     c2->width == NL80211_CHAN_WIDTH_10)
  return ((void*)0);

 if (c1->width == NL80211_CHAN_WIDTH_20_NOHT ||
     c1->width == NL80211_CHAN_WIDTH_20)
  return c2;

 if (c2->width == NL80211_CHAN_WIDTH_20_NOHT ||
     c2->width == NL80211_CHAN_WIDTH_20)
  return c1;

 chandef_primary_freqs(c1, &c1_pri40, &c1_pri80);
 chandef_primary_freqs(c2, &c2_pri40, &c2_pri80);

 if (c1_pri40 != c2_pri40)
  return ((void*)0);

 WARN_ON(!c1_pri80 && !c2_pri80);
 if (c1_pri80 && c2_pri80 && c1_pri80 != c2_pri80)
  return ((void*)0);

 if (c1->width > c2->width)
  return c1;
 return c2;
}
