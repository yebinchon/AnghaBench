
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
typedef int __be16 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int inet_proto_csum_replace2 (scalar_t__*,struct sk_buff*,int ,int ,int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int nf_flow_nat_port_udp(struct sk_buff *skb, unsigned int thoff,
    __be16 port, __be16 new_port)
{
 struct udphdr *udph;

 if (!pskb_may_pull(skb, thoff + sizeof(*udph)) ||
     skb_try_make_writable(skb, thoff + sizeof(*udph)))
  return -1;

 udph = (void *)(skb_network_header(skb) + thoff);
 if (udph->check || skb->ip_summed == CHECKSUM_PARTIAL) {
  inet_proto_csum_replace2(&udph->check, skb, port,
      new_port, 1);
  if (!udph->check)
   udph->check = CSUM_MANGLED_0;
 }

 return 0;
}
