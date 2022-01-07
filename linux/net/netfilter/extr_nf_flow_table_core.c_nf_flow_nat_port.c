
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;




 int NF_DROP ;
 int nf_flow_nat_port_tcp (struct sk_buff*,unsigned int,int ,int ) ;
 int nf_flow_nat_port_udp (struct sk_buff*,unsigned int,int ,int ) ;

__attribute__((used)) static int nf_flow_nat_port(struct sk_buff *skb, unsigned int thoff,
       u8 protocol, __be16 port, __be16 new_port)
{
 switch (protocol) {
 case 129:
  if (nf_flow_nat_port_tcp(skb, thoff, port, new_port) < 0)
   return NF_DROP;
  break;
 case 128:
  if (nf_flow_nat_port_udp(skb, thoff, port, new_port) < 0)
   return NF_DROP;
  break;
 }

 return 0;
}
