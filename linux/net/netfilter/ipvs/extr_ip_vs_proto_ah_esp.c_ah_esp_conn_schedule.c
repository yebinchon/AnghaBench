
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_proto_data {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int dummy; } ;


 int NF_ACCEPT ;

__attribute__((used)) static int
ah_esp_conn_schedule(struct netns_ipvs *ipvs, int af, struct sk_buff *skb,
       struct ip_vs_proto_data *pd,
       int *verdict, struct ip_vs_conn **cpp,
       struct ip_vs_iphdr *iph)
{



 *verdict = NF_ACCEPT;
 return 0;
}
