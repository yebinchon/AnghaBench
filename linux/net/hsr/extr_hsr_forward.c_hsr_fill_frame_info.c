
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hsr_port {TYPE_1__* hsr; } ;
struct hsr_frame_info {int is_vlan; struct hsr_port* port_rcv; int sequence_nr; struct sk_buff* skb_hsr; struct sk_buff* skb_std; int node_src; int is_supervision; } ;
struct ethhdr {scalar_t__ h_proto; } ;
struct TYPE_3__ {int seqnr_lock; int sequence_nr; } ;


 int ETH_P_8021Q ;
 int ETH_P_HSR ;
 int ETH_P_PRP ;
 int WARN_ONCE (int,char*) ;
 int check_local_dest (TYPE_1__*,struct sk_buff*,struct hsr_frame_info*) ;
 int hsr_get_node (struct hsr_port*,struct sk_buff*,int ) ;
 int hsr_get_skb_sequence_nr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int is_supervision_frame (TYPE_1__*,struct sk_buff*) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hsr_fill_frame_info(struct hsr_frame_info *frame,
          struct sk_buff *skb, struct hsr_port *port)
{
 struct ethhdr *ethhdr;
 unsigned long irqflags;

 frame->is_supervision = is_supervision_frame(port->hsr, skb);
 frame->node_src = hsr_get_node(port, skb, frame->is_supervision);
 if (!frame->node_src)
  return -1;

 ethhdr = (struct ethhdr *)skb_mac_header(skb);
 frame->is_vlan = 0;
 if (ethhdr->h_proto == htons(ETH_P_8021Q)) {
  frame->is_vlan = 1;

  WARN_ONCE(1, "HSR: VLAN not yet supported");
 }
 if (ethhdr->h_proto == htons(ETH_P_PRP) ||
     ethhdr->h_proto == htons(ETH_P_HSR)) {
  frame->skb_std = ((void*)0);
  frame->skb_hsr = skb;
  frame->sequence_nr = hsr_get_skb_sequence_nr(skb);
 } else {
  frame->skb_std = skb;
  frame->skb_hsr = ((void*)0);

  spin_lock_irqsave(&port->hsr->seqnr_lock, irqflags);
  frame->sequence_nr = port->hsr->sequence_nr;
  port->hsr->sequence_nr++;
  spin_unlock_irqrestore(&port->hsr->seqnr_lock, irqflags);
 }

 frame->port_rcv = port;
 check_local_dest(port->hsr, skb, frame);

 return 0;
}
