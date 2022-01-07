
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int pkt_type; } ;
struct rtable {int dst; } ;
struct nf_ipv6_ops {int (* route_input ) (struct sk_buff*) ;} ;
struct nf_bridge_info {int pkt_otherhost; struct net_device* physindev; scalar_t__ in_prerouting; int frag_max_size; } ;
struct net_device {int dev_addr; } ;
struct net {int dummy; } ;
struct TYPE_6__ {int frag_max_size; } ;
struct TYPE_5__ {int h_dest; } ;
struct TYPE_4__ {struct net_device* dev; scalar_t__ error; } ;


 TYPE_3__* IP6CB (struct sk_buff*) ;
 int NF_BR_PRE_ROUTING ;
 int PACKET_HOST ;
 int PACKET_OTHERHOST ;
 int br_handle_frame_finish ;
 int br_nf_hook_thresh (int ,struct net*,struct sock*,struct sk_buff*,struct net_device*,int *,int ) ;
 scalar_t__ br_nf_ipv6_daddr_was_changed (struct sk_buff*,struct nf_bridge_info*) ;
 int br_nf_pre_routing_finish_bridge ;
 struct rtable* bridge_parent_rtable (struct net_device*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int nf_bridge_push_encap_header (struct sk_buff*) ;
 int nf_bridge_update_protocol (struct sk_buff*) ;
 struct nf_ipv6_ops* nf_get_ipv6_ops () ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set_noref (struct sk_buff*,int *) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int br_nf_pre_routing_finish_ipv6(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);
 struct rtable *rt;
 struct net_device *dev = skb->dev;
 const struct nf_ipv6_ops *v6ops = nf_get_ipv6_ops();

 nf_bridge->frag_max_size = IP6CB(skb)->frag_max_size;

 if (nf_bridge->pkt_otherhost) {
  skb->pkt_type = PACKET_OTHERHOST;
  nf_bridge->pkt_otherhost = 0;
 }
 nf_bridge->in_prerouting = 0;
 if (br_nf_ipv6_daddr_was_changed(skb, nf_bridge)) {
  skb_dst_drop(skb);
  v6ops->route_input(skb);

  if (skb_dst(skb)->error) {
   kfree_skb(skb);
   return 0;
  }

  if (skb_dst(skb)->dev == dev) {
   skb->dev = nf_bridge->physindev;
   nf_bridge_update_protocol(skb);
   nf_bridge_push_encap_header(skb);
   br_nf_hook_thresh(NF_BR_PRE_ROUTING,
       net, sk, skb, skb->dev, ((void*)0),
       br_nf_pre_routing_finish_bridge);
   return 0;
  }
  ether_addr_copy(eth_hdr(skb)->h_dest, dev->dev_addr);
  skb->pkt_type = PACKET_HOST;
 } else {
  rt = bridge_parent_rtable(nf_bridge->physindev);
  if (!rt) {
   kfree_skb(skb);
   return 0;
  }
  skb_dst_set_noref(skb, &rt->dst);
 }

 skb->dev = nf_bridge->physindev;
 nf_bridge_update_protocol(skb);
 nf_bridge_push_encap_header(skb);
 br_nf_hook_thresh(NF_BR_PRE_ROUTING, net, sk, skb,
     skb->dev, ((void*)0), br_handle_frame_finish);

 return 0;
}
