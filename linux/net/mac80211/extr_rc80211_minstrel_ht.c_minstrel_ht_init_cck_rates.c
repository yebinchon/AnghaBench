
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct minstrel_priv {int* cck_rates; TYPE_3__* hw; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int flags; int const bitrate; } ;
struct TYPE_4__ {int chandef; } ;
struct TYPE_6__ {TYPE_2__* wiphy; TYPE_1__ conf; } ;
struct TYPE_5__ {struct ieee80211_supported_band** bands; } ;


 int ARRAY_SIZE (int const*) ;
 int IEEE80211_RATE_ERP_G ;
 size_t NL80211_BAND_2GHZ ;
 int ieee80211_chandef_rate_flags (int *) ;

__attribute__((used)) static void
minstrel_ht_init_cck_rates(struct minstrel_priv *mp)
{
 static const int bitrates[4] = { 10, 20, 55, 110 };
 struct ieee80211_supported_band *sband;
 u32 rate_flags = ieee80211_chandef_rate_flags(&mp->hw->conf.chandef);
 int i, j;

 sband = mp->hw->wiphy->bands[NL80211_BAND_2GHZ];
 if (!sband)
  return;

 for (i = 0; i < sband->n_bitrates; i++) {
  struct ieee80211_rate *rate = &sband->bitrates[i];

  if (rate->flags & IEEE80211_RATE_ERP_G)
   continue;

  if ((rate_flags & sband->bitrates[i].flags) != rate_flags)
   continue;

  for (j = 0; j < ARRAY_SIZE(bitrates); j++) {
   if (rate->bitrate != bitrates[j])
    continue;

   mp->cck_rates[j] = i;
   break;
  }
 }
}
