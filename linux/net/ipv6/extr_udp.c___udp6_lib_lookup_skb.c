
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_table {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct ipv6hdr {int daddr; int saddr; } ;
typedef int __be16 ;


 struct sock* __udp6_lib_lookup (int ,int *,int ,int *,int ,int ,int ,struct udp_table*,struct sk_buff*) ;
 int dev_net (int ) ;
 int inet6_iif (struct sk_buff*) ;
 int inet6_sdif (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;

__attribute__((used)) static struct sock *__udp6_lib_lookup_skb(struct sk_buff *skb,
       __be16 sport, __be16 dport,
       struct udp_table *udptable)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);

 return __udp6_lib_lookup(dev_net(skb->dev), &iph->saddr, sport,
     &iph->daddr, dport, inet6_iif(skb),
     inet6_sdif(skb), udptable, skb);
}
