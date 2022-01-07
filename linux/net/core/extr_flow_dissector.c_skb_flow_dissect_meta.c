
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int skb_iif; } ;
struct flow_dissector_key_meta {int ingress_ifindex; } ;
struct flow_dissector {int dummy; } ;


 int FLOW_DISSECTOR_KEY_META ;
 int dissector_uses_key (struct flow_dissector*,int ) ;
 struct flow_dissector_key_meta* skb_flow_dissector_target (struct flow_dissector*,int ,void*) ;

void skb_flow_dissect_meta(const struct sk_buff *skb,
      struct flow_dissector *flow_dissector,
      void *target_container)
{
 struct flow_dissector_key_meta *meta;

 if (!dissector_uses_key(flow_dissector, FLOW_DISSECTOR_KEY_META))
  return;

 meta = skb_flow_dissector_target(flow_dissector,
      FLOW_DISSECTOR_KEY_META,
      target_container);
 meta->ingress_ifindex = skb->skb_iif;
}
