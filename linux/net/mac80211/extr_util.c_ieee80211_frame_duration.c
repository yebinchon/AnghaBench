
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int DIV_ROUND_UP (int,int) ;
 int NL80211_BAND_5GHZ ;

int ieee80211_frame_duration(enum nl80211_band band, size_t len,
        int rate, int erp, int short_preamble,
        int shift)
{
 int dur;
 if (band == NL80211_BAND_5GHZ || erp) {
  dur = 16;
  dur += 16;
  dur += 4;





  dur *= 1 << shift;




  dur += 4 * DIV_ROUND_UP((16 + 8 * (len + 4) + 6) * 10,
     4 * rate);
 } else {
  dur = 10;
  dur += short_preamble ? (72 + 24) : (144 + 48);

  dur += DIV_ROUND_UP(8 * (len + 4) * 10, rate);
 }

 return dur;
}
