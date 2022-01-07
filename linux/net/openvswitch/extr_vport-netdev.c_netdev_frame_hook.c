
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; } ;
typedef int rx_handler_result_t ;


 scalar_t__ PACKET_LOOPBACK ;
 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int netdev_port_receive (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static rx_handler_result_t netdev_frame_hook(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;

 if (unlikely(skb->pkt_type == PACKET_LOOPBACK))
  return RX_HANDLER_PASS;

 netdev_port_receive(skb);
 return RX_HANDLER_CONSUMED;
}
