
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_data {int sta; } ;


 int EACCES ;
 int WLAN_STA_AUTHORIZED ;
 int test_sta_flag (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ieee80211_802_1x_port_control(struct ieee80211_rx_data *rx)
{
 if (unlikely(!rx->sta || !test_sta_flag(rx->sta, WLAN_STA_AUTHORIZED)))
  return -EACCES;

 return 0;
}
