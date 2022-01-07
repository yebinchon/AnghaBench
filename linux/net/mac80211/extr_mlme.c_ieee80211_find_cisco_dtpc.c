
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
typedef int __s8 ;



__attribute__((used)) static void ieee80211_find_cisco_dtpc(struct ieee80211_sub_if_data *sdata,
          struct ieee80211_channel *channel,
          const u8 *cisco_dtpc_ie,
          int *pwr_level)
{






 *pwr_level = (__s8)cisco_dtpc_ie[4];
}
