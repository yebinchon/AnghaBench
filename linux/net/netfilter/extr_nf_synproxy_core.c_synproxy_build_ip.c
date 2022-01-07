
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sysctl_ip_default_ttl; } ;
struct net {TYPE_1__ ipv4; } ;
struct iphdr {int version; int ihl; void* daddr; void* saddr; scalar_t__ check; int protocol; int ttl; int frag_off; scalar_t__ id; scalar_t__ tos; } ;
typedef void* __be32 ;


 int IPPROTO_TCP ;
 int IP_DF ;
 int htons (int ) ;
 struct iphdr* skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static struct iphdr *
synproxy_build_ip(struct net *net, struct sk_buff *skb, __be32 saddr,
    __be32 daddr)
{
 struct iphdr *iph;

 skb_reset_network_header(skb);
 iph = skb_put(skb, sizeof(*iph));
 iph->version = 4;
 iph->ihl = sizeof(*iph) / 4;
 iph->tos = 0;
 iph->id = 0;
 iph->frag_off = htons(IP_DF);
 iph->ttl = net->ipv4.sysctl_ip_default_ttl;
 iph->protocol = IPPROTO_TCP;
 iph->check = 0;
 iph->saddr = saddr;
 iph->daddr = daddr;

 return iph;
}
