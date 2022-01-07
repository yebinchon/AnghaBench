
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int __cookie_v4_init_sequence (struct iphdr const*,struct tcphdr const*,int *) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff const*) ;

__u32 cookie_v4_init_sequence(const struct sk_buff *skb, __u16 *mssp)
{
 const struct iphdr *iph = ip_hdr(skb);
 const struct tcphdr *th = tcp_hdr(skb);

 return __cookie_v4_init_sequence(iph, th, mssp);
}
