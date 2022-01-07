
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; scalar_t__ network_header; scalar_t__ transport_header; int protocol; } ;
struct nf_hook_state {int sk; int net; } ;
struct nf_bridge_info {int ipv6_daddr; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int daddr; } ;


 int ETH_P_IPV6 ;
 int NFPROTO_IPV6 ;
 unsigned int NF_DROP ;
 int NF_HOOK (int ,int ,int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 unsigned int NF_STOLEN ;
 int br_nf_pre_routing_finish_ipv6 ;
 scalar_t__ br_validate_ipv6 (int ,struct sk_buff*) ;
 int htons (int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 struct nf_bridge_info* nf_bridge_alloc (struct sk_buff*) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int setup_pre_routing (struct sk_buff*,int ) ;

unsigned int br_nf_pre_routing_ipv6(void *priv,
        struct sk_buff *skb,
        const struct nf_hook_state *state)
{
 struct nf_bridge_info *nf_bridge;

 if (br_validate_ipv6(state->net, skb))
  return NF_DROP;

 nf_bridge = nf_bridge_alloc(skb);
 if (!nf_bridge)
  return NF_DROP;
 if (!setup_pre_routing(skb, state->net))
  return NF_DROP;

 nf_bridge = nf_bridge_info_get(skb);
 nf_bridge->ipv6_daddr = ipv6_hdr(skb)->daddr;

 skb->protocol = htons(ETH_P_IPV6);
 skb->transport_header = skb->network_header + sizeof(struct ipv6hdr);

 NF_HOOK(NFPROTO_IPV6, NF_INET_PRE_ROUTING, state->net, state->sk, skb,
  skb->dev, ((void*)0),
  br_nf_pre_routing_finish_ipv6);

 return NF_STOLEN;
}
