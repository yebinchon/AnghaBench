
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {int (* conn_schedule ) (struct netns_ipvs*,int,struct sk_buff*,struct ip_vs_proto_data*,int*,struct ip_vs_conn**,struct ip_vs_iphdr*) ;} ;
struct ip_vs_proto_data {struct ip_vs_protocol* pp; } ;
struct ip_vs_iphdr {int off; scalar_t__ fragoffs; } ;
struct ip_vs_conn {int dummy; } ;


 int IP_VS_DBG_PKT (int,int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int NF_ACCEPT ;
 int stub1 (struct netns_ipvs*,int,struct sk_buff*,struct ip_vs_proto_data*,int*,struct ip_vs_conn**,struct ip_vs_iphdr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int
ip_vs_try_to_schedule(struct netns_ipvs *ipvs, int af, struct sk_buff *skb,
        struct ip_vs_proto_data *pd,
        int *verdict, struct ip_vs_conn **cpp,
        struct ip_vs_iphdr *iph)
{
 struct ip_vs_protocol *pp = pd->pp;

 if (!iph->fragoffs) {





  if (!pp->conn_schedule(ipvs, af, skb, pd, verdict, cpp, iph))
   return 0;
 }

 if (unlikely(!*cpp)) {

  IP_VS_DBG_PKT(12, af, pp, skb, iph->off,
         "ip_vs_in: packet continues traversal as normal");


  if (iph->fragoffs)
   IP_VS_DBG_PKT(7, af, pp, skb, iph->off,
          "unhandled fragment");

  *verdict = NF_ACCEPT;
  return 0;
 }

 return 1;
}
