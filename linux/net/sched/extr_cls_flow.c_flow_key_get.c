
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct flow_keys {int dummy; } ;
 int WARN_ON (int) ;
 int flow_get_dst (struct sk_buff*,struct flow_keys*) ;
 int flow_get_iif (struct sk_buff*) ;
 int flow_get_mark (struct sk_buff*) ;
 int flow_get_nfct (struct sk_buff*) ;
 int flow_get_nfct_dst (struct sk_buff*,struct flow_keys*) ;
 int flow_get_nfct_proto_dst (struct sk_buff*,struct flow_keys*) ;
 int flow_get_nfct_proto_src (struct sk_buff*,struct flow_keys*) ;
 int flow_get_nfct_src (struct sk_buff*,struct flow_keys*) ;
 int flow_get_priority (struct sk_buff*) ;
 int flow_get_proto (struct sk_buff*,struct flow_keys*) ;
 int flow_get_proto_dst (struct sk_buff*,struct flow_keys*) ;
 int flow_get_proto_src (struct sk_buff*,struct flow_keys*) ;
 int flow_get_rtclassid (struct sk_buff*) ;
 int flow_get_rxhash (struct sk_buff*) ;
 int flow_get_skgid (struct sk_buff*) ;
 int flow_get_skuid (struct sk_buff*) ;
 int flow_get_src (struct sk_buff*,struct flow_keys*) ;
 int flow_get_vlan_tag (struct sk_buff*) ;

__attribute__((used)) static u32 flow_key_get(struct sk_buff *skb, int key, struct flow_keys *flow)
{
 switch (key) {
 case 129:
  return flow_get_src(skb, flow);
 case 145:
  return flow_get_dst(skb, flow);
 case 136:
  return flow_get_proto(skb, flow);
 case 134:
  return flow_get_proto_src(skb, flow);
 case 135:
  return flow_get_proto_dst(skb, flow);
 case 144:
  return flow_get_iif(skb);
 case 137:
  return flow_get_priority(skb);
 case 143:
  return flow_get_mark(skb);
 case 142:
  return flow_get_nfct(skb);
 case 138:
  return flow_get_nfct_src(skb, flow);
 case 141:
  return flow_get_nfct_dst(skb, flow);
 case 139:
  return flow_get_nfct_proto_src(skb, flow);
 case 140:
  return flow_get_nfct_proto_dst(skb, flow);
 case 133:
  return flow_get_rtclassid(skb);
 case 130:
  return flow_get_skuid(skb);
 case 131:
  return flow_get_skgid(skb);
 case 128:
  return flow_get_vlan_tag(skb);
 case 132:
  return flow_get_rxhash(skb);
 default:
  WARN_ON(1);
  return 0;
 }
}
