
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; } ;
struct hsr_priv {int dummy; } ;
struct hsr_frame_info {int is_local_exclusive; int is_local_dest; } ;
struct TYPE_2__ {int h_dest; } ;


 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_MULTICAST ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 scalar_t__ hsr_addr_is_self (struct hsr_priv*,int ) ;

__attribute__((used)) static void check_local_dest(struct hsr_priv *hsr, struct sk_buff *skb,
        struct hsr_frame_info *frame)
{
 if (hsr_addr_is_self(hsr, eth_hdr(skb)->h_dest)) {
  frame->is_local_exclusive = 1;
  skb->pkt_type = PACKET_HOST;
 } else {
  frame->is_local_exclusive = 0;
 }

 if (skb->pkt_type == PACKET_HOST ||
     skb->pkt_type == PACKET_MULTICAST ||
     skb->pkt_type == PACKET_BROADCAST) {
  frame->is_local_dest = 1;
 } else {
  frame->is_local_dest = 0;
 }
}
