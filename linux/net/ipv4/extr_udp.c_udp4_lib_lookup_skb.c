
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct iphdr {int daddr; int saddr; } ;
typedef int __be16 ;


 struct sock* __udp4_lib_lookup (int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int dev_net (int ) ;
 int inet_iif (struct sk_buff*) ;
 int inet_sdif (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int udp_table ;

struct sock *udp4_lib_lookup_skb(struct sk_buff *skb,
     __be16 sport, __be16 dport)
{
 const struct iphdr *iph = ip_hdr(skb);

 return __udp4_lib_lookup(dev_net(skb->dev), iph->saddr, sport,
     iph->daddr, dport, inet_iif(skb),
     inet_sdif(skb), &udp_table, ((void*)0));
}
