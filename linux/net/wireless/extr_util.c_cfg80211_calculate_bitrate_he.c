
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct rate_info {int mcs; size_t he_gi; scalar_t__ he_ru_alloc; int nss; scalar_t__ bw; scalar_t__ he_dcm; } ;


 size_t NL80211_RATE_INFO_HE_GI_3_2 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_106 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_242 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_26 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_2x996 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_484 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_52 ;
 scalar_t__ NL80211_RATE_INFO_HE_RU_ALLOC_996 ;
 scalar_t__ RATE_INFO_BW_160 ;
 scalar_t__ RATE_INFO_BW_20 ;
 scalar_t__ RATE_INFO_BW_40 ;
 scalar_t__ RATE_INFO_BW_80 ;
 scalar_t__ RATE_INFO_BW_HE_RU ;
 int SCALE ;
 int WARN (int,char*,scalar_t__,scalar_t__) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int do_div (int,int) ;

__attribute__((used)) static u32 cfg80211_calculate_bitrate_he(struct rate_info *rate)
{

 u16 mcs_divisors[12] = {
  34133,
  17067,
  11378,
   8533,
   5689,
   4267,
   3923,
   3413,
   2844,
   2560,
   2276,
   2048,
 };
 u32 rates_160M[3] = { 960777777, 907400000, 816666666 };
 u32 rates_969[3] = { 480388888, 453700000, 408333333 };
 u32 rates_484[3] = { 229411111, 216666666, 195000000 };
 u32 rates_242[3] = { 114711111, 108333333, 97500000 };
 u32 rates_106[3] = { 40000000, 37777777, 34000000 };
 u32 rates_52[3] = { 18820000, 17777777, 16000000 };
 u32 rates_26[3] = { 9411111, 8888888, 8000000 };
 u64 tmp;
 u32 result;

 if (WARN_ON_ONCE(rate->mcs > 11))
  return 0;

 if (WARN_ON_ONCE(rate->he_gi > NL80211_RATE_INFO_HE_GI_3_2))
  return 0;
 if (WARN_ON_ONCE(rate->he_ru_alloc >
    NL80211_RATE_INFO_HE_RU_ALLOC_2x996))
  return 0;
 if (WARN_ON_ONCE(rate->nss < 1 || rate->nss > 8))
  return 0;

 if (rate->bw == RATE_INFO_BW_160)
  result = rates_160M[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_80 ||
   (rate->bw == RATE_INFO_BW_HE_RU &&
    rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_996))
  result = rates_969[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_40 ||
   (rate->bw == RATE_INFO_BW_HE_RU &&
    rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_484))
  result = rates_484[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_20 ||
   (rate->bw == RATE_INFO_BW_HE_RU &&
    rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_242))
  result = rates_242[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_HE_RU &&
   rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_106)
  result = rates_106[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_HE_RU &&
   rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_52)
  result = rates_52[rate->he_gi];
 else if (rate->bw == RATE_INFO_BW_HE_RU &&
   rate->he_ru_alloc == NL80211_RATE_INFO_HE_RU_ALLOC_26)
  result = rates_26[rate->he_gi];
 else {
  WARN(1, "invalid HE MCS: bw:%d, ru:%d\n",
       rate->bw, rate->he_ru_alloc);
  return 0;
 }


 tmp = result;
 tmp *= 2048;
 do_div(tmp, mcs_divisors[rate->mcs]);
 result = tmp;


 result = (result * rate->nss) / 8;
 if (rate->he_dcm)
  result /= 2;

 return result / 10000;
}
