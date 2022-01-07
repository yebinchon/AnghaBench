
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ mark; } ;
struct TYPE_2__ {scalar_t__ hook; int net; } ;
struct nf_queue_entry {TYPE_1__ state; } ;
struct iphdr {scalar_t__ tos; scalar_t__ daddr; scalar_t__ saddr; } ;
struct ip_rt_info {scalar_t__ tos; scalar_t__ mark; scalar_t__ daddr; scalar_t__ saddr; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 int RTN_UNSPEC ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_me_harder (int ,struct sk_buff*,int ) ;
 struct ip_rt_info* nf_queue_entry_reroute (struct nf_queue_entry const*) ;

__attribute__((used)) static int nf_ip_reroute(struct sk_buff *skb, const struct nf_queue_entry *entry)
{
 return 0;
}
