
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* rx_mask; } ;
struct TYPE_6__ {TYPE_2__ mcs; int ht_supported; } ;
struct ieee80211_supported_band {int band; int n_bitrates; TYPE_3__ ht_cap; TYPE_1__* bitrates; } ;
struct TYPE_4__ {int bitrate; int flags; } ;


 int IEEE80211_RATE_ERP_G ;
 int IEEE80211_RATE_MANDATORY_A ;
 int IEEE80211_RATE_MANDATORY_B ;
 int IEEE80211_RATE_MANDATORY_G ;





 int WARN_ON (int) ;

__attribute__((used)) static void set_mandatory_flags_band(struct ieee80211_supported_band *sband)
{
 int i, want;

 switch (sband->band) {
 case 131:
 case 129:
  want = 3;
  for (i = 0; i < sband->n_bitrates; i++) {
   if (sband->bitrates[i].bitrate == 60 ||
       sband->bitrates[i].bitrate == 120 ||
       sband->bitrates[i].bitrate == 240) {
    sband->bitrates[i].flags |=
     IEEE80211_RATE_MANDATORY_A;
    want--;
   }
  }
  WARN_ON(want);
  break;
 case 132:
  want = 7;
  for (i = 0; i < sband->n_bitrates; i++) {
   switch (sband->bitrates[i].bitrate) {
   case 10:
   case 20:
   case 55:
   case 110:
    sband->bitrates[i].flags |=
     IEEE80211_RATE_MANDATORY_B |
     IEEE80211_RATE_MANDATORY_G;
    want--;
    break;
   case 60:
   case 120:
   case 240:
    sband->bitrates[i].flags |=
     IEEE80211_RATE_MANDATORY_G;
    want--;

   default:
    sband->bitrates[i].flags |=
     IEEE80211_RATE_ERP_G;
    break;
   }
  }
  WARN_ON(want != 0 && want != 3);
  break;
 case 130:

  WARN_ON(!sband->ht_cap.ht_supported);
  WARN_ON((sband->ht_cap.mcs.rx_mask[0] & 0x1e) != 0x1e);
  break;
 case 128:
 default:
  WARN_ON(1);
  break;
 }
}
