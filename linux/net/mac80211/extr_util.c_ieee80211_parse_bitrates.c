
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int flags; int bitrate; } ;
struct cfg80211_chan_def {int dummy; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int ,int) ;
 int ieee80211_chandef_get_shift (struct cfg80211_chan_def*) ;
 int ieee80211_chandef_rate_flags (struct cfg80211_chan_def*) ;

int ieee80211_parse_bitrates(struct cfg80211_chan_def *chandef,
        const struct ieee80211_supported_band *sband,
        const u8 *srates, int srates_len, u32 *rates)
{
 u32 rate_flags = ieee80211_chandef_rate_flags(chandef);
 int shift = ieee80211_chandef_get_shift(chandef);
 struct ieee80211_rate *br;
 int brate, rate, i, j, count = 0;

 *rates = 0;

 for (i = 0; i < srates_len; i++) {
  rate = srates[i] & 0x7f;

  for (j = 0; j < sband->n_bitrates; j++) {
   br = &sband->bitrates[j];
   if ((rate_flags & br->flags) != rate_flags)
    continue;

   brate = DIV_ROUND_UP(br->bitrate, (1 << shift) * 5);
   if (brate == rate) {
    *rates |= BIT(j);
    count++;
    break;
   }
  }
 }
 return count;
}
