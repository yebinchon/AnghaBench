
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int check; } ;
struct sk_buff {int dummy; } ;
struct in6_addr {int s6_addr32; } ;


 int inet_proto_csum_replace16 (int *,struct sk_buff*,int ,int ,int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int nf_flow_nat_ipv6_tcp(struct sk_buff *skb, unsigned int thoff,
    struct in6_addr *addr,
    struct in6_addr *new_addr)
{
 struct tcphdr *tcph;

 if (!pskb_may_pull(skb, thoff + sizeof(*tcph)) ||
     skb_try_make_writable(skb, thoff + sizeof(*tcph)))
  return -1;

 tcph = (void *)(skb_network_header(skb) + thoff);
 inet_proto_csum_replace16(&tcph->check, skb, addr->s6_addr32,
      new_addr->s6_addr32, 1);

 return 0;
}
