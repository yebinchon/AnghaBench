
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int lowpan_rx_result ;


 int LOWPAN_DISPATCH_FRAG_MASK ;
 int RX_CONTINUE ;
 int RX_DROP ;
 int RX_QUEUED ;
 int lowpan_frag_rcv (struct sk_buff*,int) ;
 scalar_t__ lowpan_is_frag1 (int) ;
 scalar_t__ lowpan_is_fragn (int) ;
 int* skb_network_header (struct sk_buff*) ;

__attribute__((used)) static lowpan_rx_result lowpan_rx_h_frag(struct sk_buff *skb)
{
 int ret;

 if (!(lowpan_is_frag1(*skb_network_header(skb)) ||
       lowpan_is_fragn(*skb_network_header(skb))))
  return RX_CONTINUE;

 ret = lowpan_frag_rcv(skb, *skb_network_header(skb) &
         LOWPAN_DISPATCH_FRAG_MASK);
 if (ret == 1)
  return RX_QUEUED;




 return RX_DROP;
}
