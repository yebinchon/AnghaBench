
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_mcs_info {scalar_t__* rx_mask; } ;



u8 ieee80211_mcs_to_chains(const struct ieee80211_mcs_info *mcs)
{
 if (!mcs)
  return 1;



 if (mcs->rx_mask[3])
  return 4;
 if (mcs->rx_mask[2])
  return 3;
 if (mcs->rx_mask[1])
  return 2;
 return 1;
}
