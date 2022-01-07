
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int __cookie_v6_init_sequence (struct ipv6hdr const*,struct tcphdr const*,int *) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff const*) ;

__u32 cookie_v6_init_sequence(const struct sk_buff *skb, __u16 *mssp)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 const struct tcphdr *th = tcp_hdr(skb);

 return __cookie_v6_init_sequence(iph, th, mssp);
}
