
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int lowpan_rx_result ;


 int RX_CONTINUE ;
 int RX_DROP ;
 int RX_QUEUED ;
 int lowpan_iphc_decompress (struct sk_buff*) ;
 int lowpan_is_iphc (int ) ;
 int * skb_network_header (struct sk_buff*) ;

__attribute__((used)) static lowpan_rx_result lowpan_frag_rx_h_iphc(struct sk_buff *skb)
{
 int ret;

 if (!lowpan_is_iphc(*skb_network_header(skb)))
  return RX_CONTINUE;

 ret = lowpan_iphc_decompress(skb);
 if (ret < 0)
  return RX_DROP;

 return RX_QUEUED;
}
