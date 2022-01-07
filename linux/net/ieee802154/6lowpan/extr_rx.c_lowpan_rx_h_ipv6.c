
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int lowpan_rx_result ;


 int RX_CONTINUE ;
 int RX_QUEUED ;
 int lowpan_is_ipv6 (int ) ;
 int * skb_network_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

lowpan_rx_result lowpan_rx_h_ipv6(struct sk_buff *skb)
{
 if (!lowpan_is_ipv6(*skb_network_header(skb)))
  return RX_CONTINUE;


 skb_pull(skb, 1);
 return RX_QUEUED;
}
