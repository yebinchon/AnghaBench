
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfg80211_bss {TYPE_1__* transmitted_bss; int bssid; } ;
struct TYPE_2__ {int bssid; } ;


 int ether_addr_equal (int const*,int ) ;

__attribute__((used)) static bool ieee80211_rx_our_beacon(const u8 *tx_bssid,
        struct cfg80211_bss *bss)
{
 if (ether_addr_equal(tx_bssid, bss->bssid))
  return 1;
 if (!bss->transmitted_bss)
  return 0;
 return ether_addr_equal(tx_bssid, bss->transmitted_bss->bssid);
}
