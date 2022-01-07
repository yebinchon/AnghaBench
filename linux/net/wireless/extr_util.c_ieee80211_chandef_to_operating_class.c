
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct cfg80211_chan_def {int center_freq1; int width; TYPE_1__* chan; } ;
struct TYPE_2__ {int center_freq; } ;




 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_40 ;




bool ieee80211_chandef_to_operating_class(struct cfg80211_chan_def *chandef,
       u8 *op_class)
{
 u8 vht_opclass;
 u32 freq = chandef->center_freq1;

 if (freq >= 2412 && freq <= 2472) {
  if (chandef->width > NL80211_CHAN_WIDTH_40)
   return 0;


  if (chandef->width == NL80211_CHAN_WIDTH_40) {
   if (freq > chandef->chan->center_freq)
    *op_class = 83;
   else
    *op_class = 84;
  } else {
   *op_class = 81;
  }

  return 1;
 }

 if (freq == 2484) {

  if (chandef->width != NL80211_CHAN_WIDTH_20_NOHT)
   return 0;

  *op_class = 82;
  return 1;
 }

 switch (chandef->width) {
 case 129:
  vht_opclass = 128;
  break;
 case 131:
  vht_opclass = 129;
  break;
 case 128:
  vht_opclass = 130;
  break;
 case 132:
 case 130:
  return 0;
 default:
  vht_opclass = 0;
  break;
 }


 if (freq >= 5180 && freq <= 5240) {
  if (vht_opclass) {
   *op_class = vht_opclass;
  } else if (chandef->width == NL80211_CHAN_WIDTH_40) {
   if (freq > chandef->chan->center_freq)
    *op_class = 116;
   else
    *op_class = 117;
  } else {
   *op_class = 115;
  }

  return 1;
 }


 if (freq >= 5260 && freq <= 5320) {
  if (vht_opclass) {
   *op_class = vht_opclass;
  } else if (chandef->width == NL80211_CHAN_WIDTH_40) {
   if (freq > chandef->chan->center_freq)
    *op_class = 119;
   else
    *op_class = 120;
  } else {
   *op_class = 118;
  }

  return 1;
 }


 if (freq >= 5500 && freq <= 5720) {
  if (vht_opclass) {
   *op_class = vht_opclass;
  } else if (chandef->width == NL80211_CHAN_WIDTH_40) {
   if (freq > chandef->chan->center_freq)
    *op_class = 122;
   else
    *op_class = 123;
  } else {
   *op_class = 121;
  }

  return 1;
 }


 if (freq >= 5745 && freq <= 5845) {
  if (vht_opclass) {
   *op_class = vht_opclass;
  } else if (chandef->width == NL80211_CHAN_WIDTH_40) {
   if (freq > chandef->chan->center_freq)
    *op_class = 126;
   else
    *op_class = 127;
  } else if (freq <= 5805) {
   *op_class = 124;
  } else {
   *op_class = 125;
  }

  return 1;
 }


 if (freq >= 56160 + 2160 * 1 && freq <= 56160 + 2160 * 6) {
  if (chandef->width >= NL80211_CHAN_WIDTH_40)
   return 0;

  *op_class = 180;
  return 1;
 }


 return 0;
}
