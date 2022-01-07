
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;







int ieee80211_channel_to_frequency(int chan, enum nl80211_band band)
{


 if (chan <= 0)
  return 0;
 switch (band) {
 case 131:
  if (chan == 14)
   return 2484;
  else if (chan < 14)
   return 2407 + chan * 5;
  break;
 case 130:
  if (chan >= 182 && chan <= 196)
   return 4000 + chan * 5;
  else
   return 5000 + chan * 5;
  break;
 case 128:

  if (chan <= 253)
   return 5940 + chan * 5;
  break;
 case 129:
  if (chan < 7)
   return 56160 + chan * 2160;
  break;
 default:
  ;
 }
 return 0;
}
