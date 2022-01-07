
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; } ;


 scalar_t__ PACKET_OUTGOING ;

__attribute__((used)) static bool skb_is_err_queue(const struct sk_buff *skb)
{





 return skb->pkt_type == PACKET_OUTGOING;
}
