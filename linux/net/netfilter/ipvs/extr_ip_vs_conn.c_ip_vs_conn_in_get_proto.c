
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int dummy; } ;


 scalar_t__ ip_vs_conn_fill_param_proto (struct netns_ipvs*,int,struct sk_buff const*,struct ip_vs_iphdr const*,struct ip_vs_conn_param*) ;
 struct ip_vs_conn* ip_vs_conn_in_get (struct ip_vs_conn_param*) ;

struct ip_vs_conn *
ip_vs_conn_in_get_proto(struct netns_ipvs *ipvs, int af,
   const struct sk_buff *skb,
   const struct ip_vs_iphdr *iph)
{
 struct ip_vs_conn_param p;

 if (ip_vs_conn_fill_param_proto(ipvs, af, skb, iph, &p))
  return ((void*)0);

 return ip_vs_conn_in_get(&p);
}
