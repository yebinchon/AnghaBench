
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_iphdr {int saddr; int daddr; } ;
struct ip_vs_conn_param {int dummy; } ;


 int IPPROTO_UDP ;
 int PORT_ISAKMP ;
 int htons (int ) ;
 int ip_vs_conn_fill_param (struct netns_ipvs*,int,int ,int *,int ,int *,int ,struct ip_vs_conn_param*) ;
 int ip_vs_iph_inverse (struct ip_vs_iphdr const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void
ah_esp_conn_fill_param_proto(struct netns_ipvs *ipvs, int af,
        const struct ip_vs_iphdr *iph,
        struct ip_vs_conn_param *p)
{
 if (likely(!ip_vs_iph_inverse(iph)))
  ip_vs_conn_fill_param(ipvs, af, IPPROTO_UDP,
          &iph->saddr, htons(PORT_ISAKMP),
          &iph->daddr, htons(PORT_ISAKMP), p);
 else
  ip_vs_conn_fill_param(ipvs, af, IPPROTO_UDP,
          &iph->daddr, htons(PORT_ISAKMP),
          &iph->saddr, htons(PORT_ISAKMP), p);
}
