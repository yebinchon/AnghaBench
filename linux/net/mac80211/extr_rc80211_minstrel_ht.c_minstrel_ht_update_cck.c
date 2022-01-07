
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minstrel_priv {int * cck_rates; int hw; } ;
struct minstrel_ht_sta {int cck_supported; int * supported; int cck_supported_short; } ;
struct ieee80211_supported_band {scalar_t__ band; TYPE_1__* bitrates; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int BIT (int) ;
 int IEEE80211_RATE_SHORT_PREAMBLE ;
 size_t MINSTREL_CCK_GROUP ;
 scalar_t__ NL80211_BAND_2GHZ ;
 int SUPPORTS_HT_CCK_RATES ;
 int ieee80211_hw_check (int ,int ) ;
 int rate_supported (struct ieee80211_sta*,scalar_t__,int ) ;

__attribute__((used)) static void
minstrel_ht_update_cck(struct minstrel_priv *mp, struct minstrel_ht_sta *mi,
         struct ieee80211_supported_band *sband,
         struct ieee80211_sta *sta)
{
 int i;

 if (sband->band != NL80211_BAND_2GHZ)
  return;

 if (!ieee80211_hw_check(mp->hw, SUPPORTS_HT_CCK_RATES))
  return;

 mi->cck_supported = 0;
 mi->cck_supported_short = 0;
 for (i = 0; i < 4; i++) {
  if (!rate_supported(sta, sband->band, mp->cck_rates[i]))
   continue;

  mi->cck_supported |= BIT(i);
  if (sband->bitrates[i].flags & IEEE80211_RATE_SHORT_PREAMBLE)
   mi->cck_supported_short |= BIT(i);
 }

 mi->supported[MINSTREL_CCK_GROUP] = mi->cck_supported;
}
