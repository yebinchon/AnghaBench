
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_8__ {size_t rts_cts_rate_idx; } ;
struct ieee80211_tx_info {size_t band; TYPE_3__ control; } ;
struct ieee80211_supported_band {int band; struct ieee80211_rate* bitrates; } ;
struct TYPE_9__ {int use_short_preamble; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct ieee80211_sub_if_data {int flags; TYPE_5__ vif; } ;
struct ieee80211_rate {int flags; int bitrate; } ;
struct TYPE_7__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le16 ;
struct TYPE_6__ {struct ieee80211_supported_band** bands; } ;


 int DIV_ROUND_UP (int ,int) ;
 int IEEE80211_RATE_ERP_G ;
 int IEEE80211_SDATA_OPERATING_GMODE ;
 int cpu_to_le16 (scalar_t__) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 scalar_t__ ieee80211_frame_duration (int ,int,int,int,int,int) ;
 int ieee80211_vif_get_shift (struct ieee80211_vif*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

__le16 ieee80211_rts_duration(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif, size_t frame_len,
         const struct ieee80211_tx_info *frame_txctl)
{
 struct ieee80211_local *local = hw_to_local(hw);
 struct ieee80211_rate *rate;
 struct ieee80211_sub_if_data *sdata;
 bool short_preamble;
 int erp, shift = 0, bitrate;
 u16 dur;
 struct ieee80211_supported_band *sband;

 sband = local->hw.wiphy->bands[frame_txctl->band];

 short_preamble = 0;

 rate = &sband->bitrates[frame_txctl->control.rts_cts_rate_idx];

 erp = 0;
 if (vif) {
  sdata = vif_to_sdata(vif);
  short_preamble = sdata->vif.bss_conf.use_short_preamble;
  if (sdata->flags & IEEE80211_SDATA_OPERATING_GMODE)
   erp = rate->flags & IEEE80211_RATE_ERP_G;
  shift = ieee80211_vif_get_shift(vif);
 }

 bitrate = DIV_ROUND_UP(rate->bitrate, 1 << shift);


 dur = ieee80211_frame_duration(sband->band, 10, bitrate,
           erp, short_preamble, shift);

 dur += ieee80211_frame_duration(sband->band, frame_len, bitrate,
     erp, short_preamble, shift);

 dur += ieee80211_frame_duration(sband->band, 10, bitrate,
     erp, short_preamble, shift);

 return cpu_to_le16(dur);
}
