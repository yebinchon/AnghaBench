
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; } ;
struct TYPE_2__ {scalar_t__ hook; } ;
struct nf_queue_entry {TYPE_1__ state; } ;
struct iphdr {int saddr; int daddr; int tos; } ;
struct ip_rt_info {int mark; int saddr; int daddr; int tos; } ;


 scalar_t__ NF_INET_LOCAL_OUT ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 struct ip_rt_info* nf_queue_entry_reroute (struct nf_queue_entry*) ;

__attribute__((used)) static void nf_ip_saveroute(const struct sk_buff *skb,
       struct nf_queue_entry *entry)
{
 struct ip_rt_info *rt_info = nf_queue_entry_reroute(entry);

 if (entry->state.hook == NF_INET_LOCAL_OUT) {
  const struct iphdr *iph = ip_hdr(skb);

  rt_info->tos = iph->tos;
  rt_info->daddr = iph->daddr;
  rt_info->saddr = iph->saddr;
  rt_info->mark = skb->mark;
 }
}
