
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;
struct flow_offload {int flags; } ;
typedef enum flow_offload_tuple_dir { ____Placeholder_flow_offload_tuple_dir } flow_offload_tuple_dir ;


 int FLOW_OFFLOAD_DNAT ;
 int FLOW_OFFLOAD_SNAT ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ nf_flow_dnat_ip (struct flow_offload const*,struct sk_buff*,struct iphdr*,unsigned int,int) ;
 scalar_t__ nf_flow_dnat_port (struct flow_offload const*,struct sk_buff*,unsigned int,int ,int) ;
 scalar_t__ nf_flow_snat_ip (struct flow_offload const*,struct sk_buff*,struct iphdr*,unsigned int,int) ;
 scalar_t__ nf_flow_snat_port (struct flow_offload const*,struct sk_buff*,unsigned int,int ,int) ;

__attribute__((used)) static int nf_flow_nat_ip(const struct flow_offload *flow, struct sk_buff *skb,
     unsigned int thoff, enum flow_offload_tuple_dir dir)
{
 struct iphdr *iph = ip_hdr(skb);

 if (flow->flags & FLOW_OFFLOAD_SNAT &&
     (nf_flow_snat_port(flow, skb, thoff, iph->protocol, dir) < 0 ||
      nf_flow_snat_ip(flow, skb, iph, thoff, dir) < 0))
  return -1;
 if (flow->flags & FLOW_OFFLOAD_DNAT &&
     (nf_flow_dnat_port(flow, skb, thoff, iph->protocol, dir) < 0 ||
      nf_flow_dnat_ip(flow, skb, iph, thoff, dir) < 0))
  return -1;

 return 0;
}
