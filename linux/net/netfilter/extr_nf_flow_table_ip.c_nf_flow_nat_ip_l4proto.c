
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iphdr {int protocol; } ;
typedef int __be32 ;




 int NF_DROP ;
 int nf_flow_nat_ip_tcp (struct sk_buff*,unsigned int,int ,int ) ;
 int nf_flow_nat_ip_udp (struct sk_buff*,unsigned int,int ,int ) ;

__attribute__((used)) static int nf_flow_nat_ip_l4proto(struct sk_buff *skb, struct iphdr *iph,
      unsigned int thoff, __be32 addr,
      __be32 new_addr)
{
 switch (iph->protocol) {
 case 129:
  if (nf_flow_nat_ip_tcp(skb, thoff, addr, new_addr) < 0)
   return NF_DROP;
  break;
 case 128:
  if (nf_flow_nat_ip_udp(skb, thoff, addr, new_addr) < 0)
   return NF_DROP;
  break;
 }

 return 0;
}
