
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flow_dissector_key_tags {int flow_label; } ;
struct flow_dissector_key_ports {int dst; int src; } ;
struct flow_dissector_key_control {void* addr_type; int flags; int thoff; } ;
struct flow_dissector_key_basic {int ip_proto; int n_proto; } ;
struct TYPE_2__ {int dst; int src; } ;
struct flow_dissector_key_addrs {int v6addrs; TYPE_1__ v4addrs; } ;
struct flow_dissector {int dummy; } ;
struct bpf_flow_keys {scalar_t__ addr_proto; int flow_label; int dport; int sport; int ipv6_src; int ipv4_dst; int ipv4_src; int ip_proto; int n_proto; scalar_t__ is_encap; scalar_t__ is_first_frag; scalar_t__ is_frag; int thoff; } ;


 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 void* FLOW_DISSECTOR_KEY_BASIC ;
 void* FLOW_DISSECTOR_KEY_CONTROL ;
 void* FLOW_DISSECTOR_KEY_FLOW_LABEL ;
 void* FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 void* FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 void* FLOW_DISSECTOR_KEY_PORTS ;
 int FLOW_DIS_ENCAPSULATION ;
 int FLOW_DIS_FIRST_FRAG ;
 int FLOW_DIS_IS_FRAGMENT ;
 scalar_t__ dissector_uses_key (struct flow_dissector*,void*) ;
 int memcpy (int *,int *,int) ;
 int ntohl (int ) ;
 void* skb_flow_dissector_target (struct flow_dissector*,void*,void*) ;

__attribute__((used)) static void __skb_flow_bpf_to_target(const struct bpf_flow_keys *flow_keys,
         struct flow_dissector *flow_dissector,
         void *target_container)
{
 struct flow_dissector_key_control *key_control;
 struct flow_dissector_key_basic *key_basic;
 struct flow_dissector_key_addrs *key_addrs;
 struct flow_dissector_key_ports *key_ports;
 struct flow_dissector_key_tags *key_tags;

 key_control = skb_flow_dissector_target(flow_dissector,
      FLOW_DISSECTOR_KEY_CONTROL,
      target_container);
 key_control->thoff = flow_keys->thoff;
 if (flow_keys->is_frag)
  key_control->flags |= FLOW_DIS_IS_FRAGMENT;
 if (flow_keys->is_first_frag)
  key_control->flags |= FLOW_DIS_FIRST_FRAG;
 if (flow_keys->is_encap)
  key_control->flags |= FLOW_DIS_ENCAPSULATION;

 key_basic = skb_flow_dissector_target(flow_dissector,
           FLOW_DISSECTOR_KEY_BASIC,
           target_container);
 key_basic->n_proto = flow_keys->n_proto;
 key_basic->ip_proto = flow_keys->ip_proto;

 if (flow_keys->addr_proto == ETH_P_IP &&
     dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_IPV4_ADDRS)) {
  key_addrs = skb_flow_dissector_target(flow_dissector,
            FLOW_DISSECTOR_KEY_IPV4_ADDRS,
            target_container);
  key_addrs->v4addrs.src = flow_keys->ipv4_src;
  key_addrs->v4addrs.dst = flow_keys->ipv4_dst;
  key_control->addr_type = FLOW_DISSECTOR_KEY_IPV4_ADDRS;
 } else if (flow_keys->addr_proto == ETH_P_IPV6 &&
     dissector_uses_key(flow_dissector,
          FLOW_DISSECTOR_KEY_IPV6_ADDRS)) {
  key_addrs = skb_flow_dissector_target(flow_dissector,
            FLOW_DISSECTOR_KEY_IPV6_ADDRS,
            target_container);
  memcpy(&key_addrs->v6addrs, &flow_keys->ipv6_src,
         sizeof(key_addrs->v6addrs));
  key_control->addr_type = FLOW_DISSECTOR_KEY_IPV6_ADDRS;
 }

 if (dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_PORTS)) {
  key_ports = skb_flow_dissector_target(flow_dissector,
            FLOW_DISSECTOR_KEY_PORTS,
            target_container);
  key_ports->src = flow_keys->sport;
  key_ports->dst = flow_keys->dport;
 }

 if (dissector_uses_key(flow_dissector,
          FLOW_DISSECTOR_KEY_FLOW_LABEL)) {
  key_tags = skb_flow_dissector_target(flow_dissector,
           FLOW_DISSECTOR_KEY_FLOW_LABEL,
           target_container);
  key_tags->flow_label = ntohl(flow_keys->flow_label);
 }
}
