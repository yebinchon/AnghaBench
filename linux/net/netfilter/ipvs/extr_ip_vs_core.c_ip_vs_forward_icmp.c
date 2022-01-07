
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_hook_state {int hook; int net; } ;
struct netns_ipvs {int enable; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_ICMP ;
 unsigned int NF_ACCEPT ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 unsigned int ip_vs_in_icmp (struct netns_ipvs*,struct sk_buff*,int*,int ) ;
 struct netns_ipvs* net_ipvs (int ) ;
 scalar_t__ sysctl_backup_only (struct netns_ipvs*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int
ip_vs_forward_icmp(void *priv, struct sk_buff *skb,
     const struct nf_hook_state *state)
{
 int r;
 struct netns_ipvs *ipvs = net_ipvs(state->net);

 if (ip_hdr(skb)->protocol != IPPROTO_ICMP)
  return NF_ACCEPT;


 if (unlikely(sysctl_backup_only(ipvs) || !ipvs->enable))
  return NF_ACCEPT;

 return ip_vs_in_icmp(ipvs, skb, &r, state->hook);
}
