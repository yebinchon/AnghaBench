
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_sta_ht_cap {int cap; int mcs; } ;
struct ieee80211_ht_operation {int stbc_param; int basic_set; int operation_mode; int ht_param; int primary_chan; } ;
struct cfg80211_chan_def {int width; TYPE_1__* chan; int center_freq1; } ;
struct TYPE_2__ {int center_freq; } ;


 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_PARAM_CHAN_WIDTH_ANY ;
 int IEEE80211_HT_PARAM_CHA_SEC_ABOVE ;
 int IEEE80211_HT_PARAM_CHA_SEC_BELOW ;
 int IEEE80211_HT_PARAM_CHA_SEC_NONE ;
 int IEEE80211_HT_PARAM_RIFS_MODE ;

 int NL80211_CHAN_WIDTH_20 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;



 int WLAN_EID_HT_OPERATION ;
 int cpu_to_le16 (int ) ;
 int ieee80211_frequency_to_channel (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

u8 *ieee80211_ie_build_ht_oper(u8 *pos, struct ieee80211_sta_ht_cap *ht_cap,
          const struct cfg80211_chan_def *chandef,
          u16 prot_mode, bool rifs_mode)
{
 struct ieee80211_ht_operation *ht_oper;

 *pos++ = WLAN_EID_HT_OPERATION;
 *pos++ = sizeof(struct ieee80211_ht_operation);
 ht_oper = (struct ieee80211_ht_operation *)pos;
 ht_oper->primary_chan = ieee80211_frequency_to_channel(
     chandef->chan->center_freq);
 switch (chandef->width) {
 case 131:
 case 128:
 case 129:
 case 130:
  if (chandef->center_freq1 > chandef->chan->center_freq)
   ht_oper->ht_param = IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
  else
   ht_oper->ht_param = IEEE80211_HT_PARAM_CHA_SEC_BELOW;
  break;
 default:
  ht_oper->ht_param = IEEE80211_HT_PARAM_CHA_SEC_NONE;
  break;
 }
 if (ht_cap->cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 &&
     chandef->width != NL80211_CHAN_WIDTH_20_NOHT &&
     chandef->width != NL80211_CHAN_WIDTH_20)
  ht_oper->ht_param |= IEEE80211_HT_PARAM_CHAN_WIDTH_ANY;

 if (rifs_mode)
  ht_oper->ht_param |= IEEE80211_HT_PARAM_RIFS_MODE;

 ht_oper->operation_mode = cpu_to_le16(prot_mode);
 ht_oper->stbc_param = 0x0000;



 memset(&ht_oper->basic_set, 0, 16);
 memcpy(&ht_oper->basic_set, &ht_cap->mcs, 10);

 return pos + sizeof(struct ieee80211_ht_operation);
}
