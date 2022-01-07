
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int bitrate; } ;


 int BIT (int) ;
 int BSS_MEMBERSHIP_SELECTOR_HT_PHY ;
 int BSS_MEMBERSHIP_SELECTOR_VHT_PHY ;
 int DIV_ROUND_UP (int ,int) ;

__attribute__((used)) static void ieee80211_get_rates(struct ieee80211_supported_band *sband,
    u8 *supp_rates, unsigned int supp_rates_len,
    u32 *rates, u32 *basic_rates,
    bool *have_higher_than_11mbit,
    int *min_rate, int *min_rate_index,
    int shift)
{
 int i, j;

 for (i = 0; i < supp_rates_len; i++) {
  int rate = supp_rates[i] & 0x7f;
  bool is_basic = !!(supp_rates[i] & 0x80);

  if ((rate * 5 * (1 << shift)) > 110)
   *have_higher_than_11mbit = 1;
  if (supp_rates[i] == (0x80 | BSS_MEMBERSHIP_SELECTOR_HT_PHY) ||
      supp_rates[i] == (0x80 | BSS_MEMBERSHIP_SELECTOR_VHT_PHY))
   continue;

  for (j = 0; j < sband->n_bitrates; j++) {
   struct ieee80211_rate *br;
   int brate;

   br = &sband->bitrates[j];

   brate = DIV_ROUND_UP(br->bitrate, (1 << shift) * 5);
   if (brate == rate) {
    *rates |= BIT(j);
    if (is_basic)
     *basic_rates |= BIT(j);
    if ((rate * 5) < *min_rate) {
     *min_rate = rate * 5;
     *min_rate_index = j;
    }
    break;
   }
  }
 }
}
