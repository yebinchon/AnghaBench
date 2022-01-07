
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct ieee80211_supported_band {unsigned int n_channels; int * channels; } ;
struct ieee80211_regdomain {int dummy; } ;


 int handle_channel_custom (struct wiphy*,int *,struct ieee80211_regdomain const*) ;

__attribute__((used)) static void handle_band_custom(struct wiphy *wiphy,
          struct ieee80211_supported_band *sband,
          const struct ieee80211_regdomain *regd)
{
 unsigned int i;

 if (!sband)
  return;

 for (i = 0; i < sband->n_channels; i++)
  handle_channel_custom(wiphy, &sband->channels[i], regd);
}
