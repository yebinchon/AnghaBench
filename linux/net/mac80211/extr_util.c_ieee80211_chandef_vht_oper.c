
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vht_operation {int center_freq_seg0_idx; int center_freq_seg1_idx; int chan_width; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ht_operation {int operation_mode; } ;
struct cfg80211_chan_def {int center_freq1; int center_freq2; void* width; TYPE_1__* chan; } ;
struct TYPE_2__ {int band; } ;


 int IEEE80211_HT_OP_MODE_CCFS2_MASK ;
 int IEEE80211_HT_OP_MODE_CCFS2_SHIFT ;




 void* NL80211_CHAN_WIDTH_160 ;
 void* NL80211_CHAN_WIDTH_80 ;
 void* NL80211_CHAN_WIDTH_80P80 ;
 int SUPPORTS_VHT_EXT_NSS_BW ;
 unsigned int abs (int) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 scalar_t__ ieee80211_hw_check (struct ieee80211_hw*,int ) ;
 int le16_to_cpu (int ) ;

bool ieee80211_chandef_vht_oper(struct ieee80211_hw *hw,
    const struct ieee80211_vht_operation *oper,
    const struct ieee80211_ht_operation *htop,
    struct cfg80211_chan_def *chandef)
{
 struct cfg80211_chan_def new = *chandef;
 int cf0, cf1;
 int ccfs0, ccfs1, ccfs2;
 int ccf0, ccf1;

 if (!oper || !htop)
  return 0;

 ccfs0 = oper->center_freq_seg0_idx;
 ccfs1 = oper->center_freq_seg1_idx;
 ccfs2 = (le16_to_cpu(htop->operation_mode) &
    IEEE80211_HT_OP_MODE_CCFS2_MASK)
   >> IEEE80211_HT_OP_MODE_CCFS2_SHIFT;


 ccf0 = ccfs0;
 ccf1 = ccfs1;
 if (!ccfs1 && ieee80211_hw_check(hw, SUPPORTS_VHT_EXT_NSS_BW))
  ccf1 = ccfs2;

 cf0 = ieee80211_channel_to_frequency(ccf0, chandef->chan->band);
 cf1 = ieee80211_channel_to_frequency(ccf1, chandef->chan->band);

 switch (oper->chan_width) {
 case 128:

  break;
 case 130:
  new.width = NL80211_CHAN_WIDTH_80;
  new.center_freq1 = cf0;

  if (ccf1) {
   unsigned int diff;

   diff = abs(ccf1 - ccf0);
   if (diff == 8) {
    new.width = NL80211_CHAN_WIDTH_160;
    new.center_freq1 = cf1;
   } else if (diff > 8) {
    new.width = NL80211_CHAN_WIDTH_80P80;
    new.center_freq2 = cf1;
   }
  }
  break;
 case 131:

  new.width = NL80211_CHAN_WIDTH_160;
  new.center_freq1 = cf0;
  break;
 case 129:

  new.width = NL80211_CHAN_WIDTH_80P80;
  new.center_freq1 = cf0;
  new.center_freq2 = cf1;
  break;
 default:
  return 0;
 }

 if (!cfg80211_chandef_valid(&new))
  return 0;

 *chandef = new;
 return 1;
}
