
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct sk_buff {scalar_t__ pkt_type; void* protocol; int dev; } ;
struct nf_hook_state {int sk; int net; } ;
struct nf_bridge_info {int pkt_otherhost; int physoutdev; } ;
struct net_device {int dummy; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_IP (struct sk_buff*) ;
 scalar_t__ IS_IPV6 (struct sk_buff*) ;
 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int NF_HOOK (scalar_t__,int ,int ,int ,struct sk_buff*,int *,struct net_device*,int ) ;
 int NF_INET_POST_ROUTING ;
 unsigned int NF_STOLEN ;
 scalar_t__ PACKET_HOST ;
 scalar_t__ PACKET_OTHERHOST ;
 int br_nf_dev_queue_xmit ;
 struct net_device* bridge_parent (int ) ;
 void* htons (int ) ;
 scalar_t__ is_pppoe_ip (struct sk_buff*,int ) ;
 scalar_t__ is_pppoe_ipv6 (struct sk_buff*,int ) ;
 scalar_t__ is_vlan_ip (struct sk_buff*,int ) ;
 scalar_t__ is_vlan_ipv6 (struct sk_buff*,int ) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int nf_bridge_pull_encap_header (struct sk_buff*) ;

__attribute__((used)) static unsigned int br_nf_post_routing(void *priv,
           struct sk_buff *skb,
           const struct nf_hook_state *state)
{
 struct nf_bridge_info *nf_bridge = nf_bridge_info_get(skb);
 struct net_device *realoutdev = bridge_parent(skb->dev);
 u_int8_t pf;






 if (!nf_bridge || !nf_bridge->physoutdev)
  return NF_ACCEPT;

 if (!realoutdev)
  return NF_DROP;

 if (IS_IP(skb) || is_vlan_ip(skb, state->net) ||
     is_pppoe_ip(skb, state->net))
  pf = NFPROTO_IPV4;
 else if (IS_IPV6(skb) || is_vlan_ipv6(skb, state->net) ||
   is_pppoe_ipv6(skb, state->net))
  pf = NFPROTO_IPV6;
 else
  return NF_ACCEPT;



 if (skb->pkt_type == PACKET_OTHERHOST) {
  skb->pkt_type = PACKET_HOST;
  nf_bridge->pkt_otherhost = 1;
 }

 nf_bridge_pull_encap_header(skb);
 if (pf == NFPROTO_IPV4)
  skb->protocol = htons(ETH_P_IP);
 else
  skb->protocol = htons(ETH_P_IPV6);

 NF_HOOK(pf, NF_INET_POST_ROUTING, state->net, state->sk, skb,
  ((void*)0), realoutdev,
  br_nf_dev_queue_xmit);

 return NF_STOLEN;
}
