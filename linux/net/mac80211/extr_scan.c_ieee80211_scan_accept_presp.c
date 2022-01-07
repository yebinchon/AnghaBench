
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;


 int NL80211_SCAN_FLAG_ACCEPT_BCAST_PROBE_RESP ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 int ether_addr_equal (int const*,int ) ;
 scalar_t__ is_broadcast_ether_addr (int const*) ;

__attribute__((used)) static bool ieee80211_scan_accept_presp(struct ieee80211_sub_if_data *sdata,
     u32 scan_flags, const u8 *da)
{
 if (!sdata)
  return 0;

 if (scan_flags & NL80211_SCAN_FLAG_ACCEPT_BCAST_PROBE_RESP &&
     is_broadcast_ether_addr(da))
  return 1;
 if (scan_flags & NL80211_SCAN_FLAG_RANDOM_ADDR)
  return 1;
 return ether_addr_equal(da, sdata->vif.addr);
}
