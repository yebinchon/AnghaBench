
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u16 ;
struct sk_buff {scalar_t__ pkt_type; int dev; int cb; } ;
struct net_bridge_port {int flags; unsigned int group_fwd_mask; int state; TYPE_2__* br; } ;
struct br_input_skb_cb {int dummy; } ;
typedef int rx_handler_result_t ;
struct TYPE_6__ {unsigned char* h_dest; int h_source; } ;
struct TYPE_5__ {unsigned int group_fwd_mask_required; unsigned int group_fwd_mask; TYPE_1__* dev; int stp_enabled; } ;
struct TYPE_4__ {int dev_addr; } ;


 int BR_NO_STP ;


 int BR_VLAN_TUNNEL ;
 int GFP_ATOMIC ;
 int NFPROTO_BRIDGE ;
 int NF_BR_LOCAL_IN ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int ,int *,int ) ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_LOOPBACK ;
 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int __br_handle_local_finish (struct sk_buff*) ;
 scalar_t__ br_handle_ingress_vlan_tunnel (struct sk_buff*,struct net_bridge_port*,int ) ;
 int br_handle_local_finish ;
 struct net_bridge_port* br_port_get_rcu (int ) ;
 int dev_net (int ) ;
 TYPE_3__* eth_hdr (struct sk_buff*) ;
 int ether_addr_equal (int ,unsigned char const*) ;
 int is_link_local_ether_addr (unsigned char const*) ;
 int is_valid_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int nbp_vlan_group_rcu (struct net_bridge_port*) ;
 int nf_hook_bridge_pre (struct sk_buff*,struct sk_buff**) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

rx_handler_result_t br_handle_frame(struct sk_buff **pskb)
{
 struct net_bridge_port *p;
 struct sk_buff *skb = *pskb;
 const unsigned char *dest = eth_hdr(skb)->h_dest;

 if (unlikely(skb->pkt_type == PACKET_LOOPBACK))
  return RX_HANDLER_PASS;

 if (!is_valid_ether_addr(eth_hdr(skb)->h_source))
  goto drop;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  return RX_HANDLER_CONSUMED;

 memset(skb->cb, 0, sizeof(struct br_input_skb_cb));

 p = br_port_get_rcu(skb->dev);
 if (p->flags & BR_VLAN_TUNNEL) {
  if (br_handle_ingress_vlan_tunnel(skb, p,
        nbp_vlan_group_rcu(p)))
   goto drop;
 }

 if (unlikely(is_link_local_ether_addr(dest))) {
  u16 fwd_mask = p->br->group_fwd_mask_required;
  fwd_mask |= p->group_fwd_mask;
  switch (dest[5]) {
  case 0x00:


   if (p->br->stp_enabled == BR_NO_STP ||
       fwd_mask & (1u << dest[5]))
    goto forward;
   *pskb = skb;
   __br_handle_local_finish(skb);
   return RX_HANDLER_PASS;

  case 0x01:
   goto drop;

  case 0x0E:
   fwd_mask |= p->br->group_fwd_mask;
   if (fwd_mask & (1u << dest[5]))
    goto forward;
   *pskb = skb;
   __br_handle_local_finish(skb);
   return RX_HANDLER_PASS;

  default:

   fwd_mask |= p->br->group_fwd_mask;
   if (fwd_mask & (1u << dest[5]))
    goto forward;
  }






  if (NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_IN,
       dev_net(skb->dev), ((void*)0), skb, skb->dev, ((void*)0),
       br_handle_local_finish) == 1) {
   return RX_HANDLER_PASS;
  } else {
   return RX_HANDLER_CONSUMED;
  }
 }

forward:
 switch (p->state) {
 case 129:
 case 128:
  if (ether_addr_equal(p->br->dev->dev_addr, dest))
   skb->pkt_type = PACKET_HOST;

  return nf_hook_bridge_pre(skb, pskb);
 default:
drop:
  kfree_skb(skb);
 }
 return RX_HANDLER_CONSUMED;
}
