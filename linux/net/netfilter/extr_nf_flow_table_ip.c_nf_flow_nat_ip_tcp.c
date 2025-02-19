
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int check; } ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 int inet_proto_csum_replace4 (int *,struct sk_buff*,int ,int ,int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ skb_try_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int nf_flow_nat_ip_tcp(struct sk_buff *skb, unsigned int thoff,
         __be32 addr, __be32 new_addr)
{
 struct tcphdr *tcph;

 if (!pskb_may_pull(skb, thoff + sizeof(*tcph)) ||
     skb_try_make_writable(skb, thoff + sizeof(*tcph)))
  return -1;

 tcph = (void *)(skb_network_header(skb) + thoff);
 inet_proto_csum_replace4(&tcph->check, skb, addr, new_addr, 1);

 return 0;
}
