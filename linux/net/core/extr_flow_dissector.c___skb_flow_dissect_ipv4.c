
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int ttl; int tos; } ;
struct flow_dissector_key_ip {int ttl; int tos; } ;
struct flow_dissector {int dummy; } ;


 int FLOW_DISSECTOR_KEY_IP ;
 int dissector_uses_key (struct flow_dissector*,int ) ;
 struct flow_dissector_key_ip* skb_flow_dissector_target (struct flow_dissector*,int ,void*) ;

__attribute__((used)) static void
__skb_flow_dissect_ipv4(const struct sk_buff *skb,
   struct flow_dissector *flow_dissector,
   void *target_container, void *data, const struct iphdr *iph)
{
 struct flow_dissector_key_ip *key_ip;

 if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_IP))
  return;

 key_ip = skb_flow_dissector_target(flow_dissector,
        FLOW_DISSECTOR_KEY_IP,
        target_container);
 key_ip->tos = iph->tos;
 key_ip->ttl = iph->ttl;
}
