
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
typedef int ssize_t ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int EINVAL ;
 int IEEE80211_SMPS_NUM_MODES ;
 int ieee80211_set_smps (struct ieee80211_sub_if_data*,int) ;
 int * smps_modes ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static ssize_t ieee80211_if_parse_smps(struct ieee80211_sub_if_data *sdata,
           const char *buf, int buflen)
{
 enum ieee80211_smps_mode mode;

 for (mode = 0; mode < IEEE80211_SMPS_NUM_MODES; mode++) {
  if (strncmp(buf, smps_modes[mode], buflen) == 0) {
   int err = ieee80211_set_smps(sdata, mode);
   if (!err)
    return buflen;
   return err;
  }
 }

 return -EINVAL;
}
