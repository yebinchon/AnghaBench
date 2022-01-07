
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_supported_band {unsigned int n_channels; int * channels; } ;


 int reg_process_ht_flags_channel (struct wiphy*,int *) ;

__attribute__((used)) static void reg_process_ht_flags_band(struct wiphy *wiphy,
          struct ieee80211_supported_band *sband)
{
 unsigned int i;

 if (!sband)
  return;

 for (i = 0; i < sband->n_channels; i++)
  reg_process_ht_flags_channel(wiphy, &sband->channels[i]);
}
