
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hsr_port {TYPE_2__* dev; } ;
struct hsr_frame_info {int node_src; TYPE_1__* port_rcv; } ;
struct TYPE_6__ {int h_source; } ;
struct TYPE_5__ {int dev_addr; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ HSR_PT_MASTER ;
 int dev_queue_xmit (struct sk_buff*) ;
 TYPE_3__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int hsr_addr_subst_dest (int ,struct sk_buff*,struct hsr_port*) ;

__attribute__((used)) static int hsr_xmit(struct sk_buff *skb, struct hsr_port *port,
      struct hsr_frame_info *frame)
{
 if (frame->port_rcv->type == HSR_PT_MASTER) {
  hsr_addr_subst_dest(frame->node_src, skb, port);




  ether_addr_copy(eth_hdr(skb)->h_source, port->dev->dev_addr);
 }
 return dev_queue_xmit(skb);
}
