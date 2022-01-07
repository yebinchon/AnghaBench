
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channels; int bw_config; } ;
struct cfg80211_chan_def {TYPE_2__ edmg; TYPE_1__* chan; } ;
struct TYPE_3__ {int center_freq; } ;


 int BIT (int) ;
 int cfg80211_valid_60g_freq (int ) ;
 int max (int,int) ;

__attribute__((used)) static bool cfg80211_edmg_chandef_valid(const struct cfg80211_chan_def *chandef)
{
 int max_contiguous = 0;
 int num_of_enabled = 0;
 int contiguous = 0;
 int i;

 if (!chandef->edmg.channels || !chandef->edmg.bw_config)
  return 0;

 if (!cfg80211_valid_60g_freq(chandef->chan->center_freq))
  return 0;

 for (i = 0; i < 6; i++) {
  if (chandef->edmg.channels & BIT(i)) {
   contiguous++;
   num_of_enabled++;
  } else {
   contiguous = 0;
  }

  max_contiguous = max(contiguous, max_contiguous);
 }




 switch (chandef->edmg.bw_config) {
 case 133:
 case 129:
 case 137:
  if (max_contiguous < 1)
   return 0;
  break;
 case 132:
 case 128:
 case 136:
  if (max_contiguous < 2)
   return 0;
  break;
 case 131:
 case 139:
 case 135:
  if (max_contiguous < 3)
   return 0;
  break;
 case 130:
 case 138:
 case 134:
  if (max_contiguous < 4)
   return 0;
  break;

 default:
  return 0;
 }


 switch (chandef->edmg.bw_config) {
 case 133:
 case 132:
 case 131:
 case 130:
  break;
 case 129:
 case 128:
 case 139:
 case 138:
  if (num_of_enabled < 2)
   return 0;
  break;
 case 137:
 case 136:
 case 135:
 case 134:
  if (num_of_enabled < 4 || max_contiguous < 2)
   return 0;
  break;
 default:
  return 0;
 }

 return 1;
}
