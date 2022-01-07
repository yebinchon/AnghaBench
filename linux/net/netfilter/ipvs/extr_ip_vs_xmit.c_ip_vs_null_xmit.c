
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int dummy; } ;


 int NFPROTO_IPV4 ;
 int ip_vs_send_or_cont (int ,struct sk_buff*,struct ip_vs_conn*,int) ;

int
ip_vs_null_xmit(struct sk_buff *skb, struct ip_vs_conn *cp,
  struct ip_vs_protocol *pp, struct ip_vs_iphdr *ipvsh)
{

 return ip_vs_send_or_cont(NFPROTO_IPV4, skb, cp, 1);
}
