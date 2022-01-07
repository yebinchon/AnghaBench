
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ PACKET_OUTGOING ;

__attribute__((used)) static void skb_set_err_queue(struct sk_buff *skb)
{



 skb->pkt_type = PACKET_OUTGOING;
 BUILD_BUG_ON(PACKET_OUTGOING == 0);
}
