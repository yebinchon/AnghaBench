
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct iphdr {int ihl; scalar_t__ protocol; int ttl; int daddr; int saddr; } ;
struct flow_ports {int dest; int source; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct flow_offload_tuple {scalar_t__ l4proto; int iifidx; int l3proto; int dst_port; int src_port; TYPE_2__ dst_v4; TYPE_1__ src_v4; } ;


 int AF_INET ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int ip_has_options (unsigned int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int nf_flow_tuple_ip(struct sk_buff *skb, const struct net_device *dev,
       struct flow_offload_tuple *tuple)
{
 struct flow_ports *ports;
 unsigned int thoff;
 struct iphdr *iph;

 if (!pskb_may_pull(skb, sizeof(*iph)))
  return -1;

 iph = ip_hdr(skb);
 thoff = iph->ihl * 4;

 if (ip_is_fragment(iph) ||
     unlikely(ip_has_options(thoff)))
  return -1;

 if (iph->protocol != IPPROTO_TCP &&
     iph->protocol != IPPROTO_UDP)
  return -1;

 if (iph->ttl <= 1)
  return -1;

 thoff = iph->ihl * 4;
 if (!pskb_may_pull(skb, thoff + sizeof(*ports)))
  return -1;

 ports = (struct flow_ports *)(skb_network_header(skb) + thoff);

 tuple->src_v4.s_addr = iph->saddr;
 tuple->dst_v4.s_addr = iph->daddr;
 tuple->src_port = ports->source;
 tuple->dst_port = ports->dest;
 tuple->l3proto = AF_INET;
 tuple->l4proto = iph->protocol;
 tuple->iifidx = dev->ifindex;

 return 0;
}
