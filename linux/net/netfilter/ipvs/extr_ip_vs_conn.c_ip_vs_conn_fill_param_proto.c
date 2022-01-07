
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_iphdr {int saddr; int daddr; int protocol; int len; } ;
struct ip_vs_conn_param {int dummy; } ;
typedef int _ports ;
typedef int __be16 ;


 int * frag_safe_skb_hp (struct sk_buff const*,int ,int,int *) ;
 int ip_vs_conn_fill_param (struct netns_ipvs*,int,int ,int *,int ,int *,int ,struct ip_vs_conn_param*) ;
 int ip_vs_iph_inverse (struct ip_vs_iphdr const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
ip_vs_conn_fill_param_proto(struct netns_ipvs *ipvs,
       int af, const struct sk_buff *skb,
       const struct ip_vs_iphdr *iph,
       struct ip_vs_conn_param *p)
{
 __be16 _ports[2], *pptr;

 pptr = frag_safe_skb_hp(skb, iph->len, sizeof(_ports), _ports);
 if (pptr == ((void*)0))
  return 1;

 if (likely(!ip_vs_iph_inverse(iph)))
  ip_vs_conn_fill_param(ipvs, af, iph->protocol, &iph->saddr,
          pptr[0], &iph->daddr, pptr[1], p);
 else
  ip_vs_conn_fill_param(ipvs, af, iph->protocol, &iph->daddr,
          pptr[1], &iph->saddr, pptr[0], p);
 return 0;
}
