
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct cfg80211_chan_def {int width; int center_freq1; scalar_t__ center_freq2; TYPE_1__* chan; } ;
struct sta_info {struct cfg80211_chan_def tdls_chandef; } ;
struct TYPE_8__ {int iftype; } ;
struct ieee80211_sub_if_data {TYPE_4__ wdev; TYPE_3__* local; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_7__ {TYPE_2__ hw; } ;
struct TYPE_5__ {int center_freq; } ;


 int ARRAY_SIZE (int*) ;
 int NL80211_CHAN_WIDTH_10 ;
 int NL80211_CHAN_WIDTH_5 ;
 int NL80211_CHAN_WIDTH_80 ;
 int abs (int) ;
 int cfg80211_chandef_identical (struct cfg80211_chan_def*,struct cfg80211_chan_def*) ;
 int cfg80211_reg_can_beacon_relax (int ,struct cfg80211_chan_def*,int ) ;
 int ieee80211_chandef_downgrade (struct cfg80211_chan_def*) ;
 int ieee80211_sta_cap_chan_bw (struct sta_info*) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ieee80211_tdls_chandef_vht_upgrade(struct ieee80211_sub_if_data *sdata,
       struct sta_info *sta)
{

 u16 centers_80mhz[] = { 5210, 5290, 5530, 5610, 5690, 5775 };
 struct cfg80211_chan_def uc = sta->tdls_chandef;
 enum nl80211_chan_width max_width = ieee80211_sta_cap_chan_bw(sta);
 int i;


 if (max_width == NL80211_CHAN_WIDTH_5 ||
     max_width == NL80211_CHAN_WIDTH_10)
  return;

 if (max_width > NL80211_CHAN_WIDTH_80)
  max_width = NL80211_CHAN_WIDTH_80;

 if (uc.width >= max_width)
  return;






 for (i = 0; i < ARRAY_SIZE(centers_80mhz); i++)
  if (abs(uc.chan->center_freq - centers_80mhz[i]) <= 30) {
   uc.center_freq1 = centers_80mhz[i];
   uc.center_freq2 = 0;
   uc.width = NL80211_CHAN_WIDTH_80;
   break;
  }

 if (!uc.center_freq1)
  return;


 while (uc.width > max_width ||
        (uc.width > sta->tdls_chandef.width &&
  !cfg80211_reg_can_beacon_relax(sdata->local->hw.wiphy, &uc,
            sdata->wdev.iftype)))
  ieee80211_chandef_downgrade(&uc);

 if (!cfg80211_chandef_identical(&uc, &sta->tdls_chandef)) {
  tdls_dbg(sdata, "TDLS ch width upgraded %d -> %d\n",
    sta->tdls_chandef.width, uc.width);





  sta->tdls_chandef = uc;
 }
}
