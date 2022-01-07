
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; scalar_t__ network_header; scalar_t__ transport_header; int protocol; } ;
struct nf_hook_state {int sk; int net; int in; } ;
struct nf_bridge_info {int ipv4_daddr; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct brnf_net {int call_iptables; int call_ip6tables; } ;
typedef int __u32 ;
struct TYPE_2__ {int ihl; int daddr; } ;


 int BROPT_NF_CALL_IP6TABLES ;
 int BROPT_NF_CALL_IPTABLES ;
 int ETH_P_IP ;
 int IS_IP (struct sk_buff*) ;
 scalar_t__ IS_IPV6 (struct sk_buff*) ;
 int NFPROTO_IPV4 ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int NF_HOOK (int ,int ,int ,int ,struct sk_buff*,int ,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 unsigned int NF_STOLEN ;
 int br_nf_pre_routing_finish ;
 unsigned int br_nf_pre_routing_ipv6 (void*,struct sk_buff*,struct nf_hook_state const*) ;
 int br_opt_get (struct net_bridge*,int ) ;
 struct net_bridge_port* br_port_get_rcu (int ) ;
 scalar_t__ br_validate_ipv4 (int ,struct sk_buff*) ;
 int brnf_net_id ;
 int htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ipv6_mod_enabled () ;
 int is_pppoe_ip (struct sk_buff*,int ) ;
 scalar_t__ is_pppoe_ipv6 (struct sk_buff*,int ) ;
 int is_vlan_ip (struct sk_buff*,int ) ;
 scalar_t__ is_vlan_ipv6 (struct sk_buff*,int ) ;
 struct brnf_net* net_generic (int ,int ) ;
 int nf_bridge_alloc (struct sk_buff*) ;
 int nf_bridge_encap_header_len (struct sk_buff*) ;
 struct nf_bridge_info* nf_bridge_info_get (struct sk_buff*) ;
 int nf_bridge_pull_encap_header_rcsum (struct sk_buff*) ;
 int pr_warn_once (char*) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int setup_pre_routing (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int br_nf_pre_routing(void *priv,
          struct sk_buff *skb,
          const struct nf_hook_state *state)
{
 struct nf_bridge_info *nf_bridge;
 struct net_bridge_port *p;
 struct net_bridge *br;
 __u32 len = nf_bridge_encap_header_len(skb);
 struct brnf_net *brnet;

 if (unlikely(!pskb_may_pull(skb, len)))
  return NF_DROP;

 p = br_port_get_rcu(state->in);
 if (p == ((void*)0))
  return NF_DROP;
 br = p->br;

 brnet = net_generic(state->net, brnf_net_id);
 if (IS_IPV6(skb) || is_vlan_ipv6(skb, state->net) ||
     is_pppoe_ipv6(skb, state->net)) {
  if (!brnet->call_ip6tables &&
      !br_opt_get(br, BROPT_NF_CALL_IP6TABLES))
   return NF_ACCEPT;
  if (!ipv6_mod_enabled()) {
   pr_warn_once("Module ipv6 is disabled, so call_ip6tables is not supported.");
   return NF_DROP;
  }

  nf_bridge_pull_encap_header_rcsum(skb);
  return br_nf_pre_routing_ipv6(priv, skb, state);
 }

 if (!brnet->call_iptables && !br_opt_get(br, BROPT_NF_CALL_IPTABLES))
  return NF_ACCEPT;

 if (!IS_IP(skb) && !is_vlan_ip(skb, state->net) &&
     !is_pppoe_ip(skb, state->net))
  return NF_ACCEPT;

 nf_bridge_pull_encap_header_rcsum(skb);

 if (br_validate_ipv4(state->net, skb))
  return NF_DROP;

 if (!nf_bridge_alloc(skb))
  return NF_DROP;
 if (!setup_pre_routing(skb, state->net))
  return NF_DROP;

 nf_bridge = nf_bridge_info_get(skb);
 nf_bridge->ipv4_daddr = ip_hdr(skb)->daddr;

 skb->protocol = htons(ETH_P_IP);
 skb->transport_header = skb->network_header + ip_hdr(skb)->ihl * 4;

 NF_HOOK(NFPROTO_IPV4, NF_INET_PRE_ROUTING, state->net, state->sk, skb,
  skb->dev, ((void*)0),
  br_nf_pre_routing_finish);

 return NF_STOLEN;
}
