
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_service {int dummy; } ;
struct ip_vs_iphdr {scalar_t__ protocol; } ;
struct ip_vs_dest {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
typedef int __be16 ;


 scalar_t__ IPPROTO_UDP ;
 struct ip_vs_conn* ip_vs_new_conn_out (struct ip_vs_service*,struct ip_vs_dest*,struct sk_buff*,struct ip_vs_iphdr const*,int ,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static struct ip_vs_conn *
ip_vs_sip_conn_out(struct ip_vs_service *svc,
     struct ip_vs_dest *dest,
     struct sk_buff *skb,
     const struct ip_vs_iphdr *iph,
     __be16 dport,
     __be16 cport)
{
 if (likely(iph->protocol == IPPROTO_UDP))
  return ip_vs_new_conn_out(svc, dest, skb, iph, dport, cport);

 return ((void*)0);
}
