
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_2__ {int first_channel; int num_channels; int max_power; } ;
struct ieee80211_country_ie_triplet {TYPE_1__ chans; } ;
struct ieee80211_channel {int band; int center_freq; } ;


 int IEEE80211_COUNTRY_EXTENSION_ID ;
 int IEEE80211_COUNTRY_IE_MIN_LEN ;



 int WARN_ON_ONCE (int) ;
 int ieee80211_frequency_to_channel (int ) ;

__attribute__((used)) static bool
ieee80211_find_80211h_pwr_constr(struct ieee80211_sub_if_data *sdata,
     struct ieee80211_channel *channel,
     const u8 *country_ie, u8 country_ie_len,
     const u8 *pwr_constr_elem,
     int *chan_pwr, int *pwr_reduction)
{
 struct ieee80211_country_ie_triplet *triplet;
 int chan = ieee80211_frequency_to_channel(channel->center_freq);
 int i, chan_increment;
 bool have_chan_pwr = 0;


 if (country_ie_len % 2 || country_ie_len < IEEE80211_COUNTRY_IE_MIN_LEN)
  return 0;

 triplet = (void *)(country_ie + 3);
 country_ie_len -= 3;

 switch (channel->band) {
 default:
  WARN_ON_ONCE(1);

 case 130:
 case 128:
  chan_increment = 1;
  break;
 case 129:
  chan_increment = 4;
  break;
 }


 while (country_ie_len >= 3) {
  u8 first_channel = triplet->chans.first_channel;

  if (first_channel >= IEEE80211_COUNTRY_EXTENSION_ID)
   goto next;

  for (i = 0; i < triplet->chans.num_channels; i++) {
   if (first_channel + i * chan_increment == chan) {
    have_chan_pwr = 1;
    *chan_pwr = triplet->chans.max_power;
    break;
   }
  }
  if (have_chan_pwr)
   break;

 next:
  triplet++;
  country_ie_len -= 3;
 }

 if (have_chan_pwr && pwr_constr_elem)
  *pwr_reduction = *pwr_constr_elem;
 else
  *pwr_reduction = 0;

 return have_chan_pwr;
}
