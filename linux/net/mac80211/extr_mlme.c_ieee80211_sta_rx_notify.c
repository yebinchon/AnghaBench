
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;


 int ieee80211_sta_reset_conn_monitor (struct ieee80211_sub_if_data*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;

void ieee80211_sta_rx_notify(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_hdr *hdr)
{
 if (is_multicast_ether_addr(hdr->addr1))
  return;

 ieee80211_sta_reset_conn_monitor(sdata);
}
