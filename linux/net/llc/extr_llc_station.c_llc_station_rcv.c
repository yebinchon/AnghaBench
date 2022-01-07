
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 scalar_t__ llc_stat_ev_rx_null_dsap_test_c (struct sk_buff*) ;
 scalar_t__ llc_stat_ev_rx_null_dsap_xid_c (struct sk_buff*) ;
 int llc_station_ac_send_test_r (struct sk_buff*) ;
 int llc_station_ac_send_xid_r (struct sk_buff*) ;

__attribute__((used)) static void llc_station_rcv(struct sk_buff *skb)
{
 if (llc_stat_ev_rx_null_dsap_xid_c(skb))
  llc_station_ac_send_xid_r(skb);
 else if (llc_stat_ev_rx_null_dsap_test_c(skb))
  llc_station_ac_send_test_r(skb);
 kfree_skb(skb);
}
