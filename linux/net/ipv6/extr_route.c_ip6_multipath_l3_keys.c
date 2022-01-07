
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ipv6hdr {scalar_t__ nexthdr; scalar_t__ icmp6_type; int daddr; int saddr; } ;
struct icmp6hdr {scalar_t__ nexthdr; scalar_t__ icmp6_type; int daddr; int saddr; } ;
struct TYPE_8__ {scalar_t__ ip_proto; } ;
struct TYPE_7__ {int flow_label; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_6__ {TYPE_1__ v6addrs; } ;
struct flow_keys {TYPE_4__ basic; TYPE_3__ tags; TYPE_2__ addrs; } ;
typedef int _inner_iph ;
typedef int _icmph ;


 scalar_t__ ICMPV6_DEST_UNREACH ;
 scalar_t__ ICMPV6_PARAMPROB ;
 scalar_t__ ICMPV6_PKT_TOOBIG ;
 scalar_t__ ICMPV6_TIME_EXCEED ;
 scalar_t__ IPPROTO_ICMPV6 ;
 int ip6_flowlabel (struct ipv6hdr const*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 scalar_t__ likely (int) ;
 struct ipv6hdr* skb_header_pointer (struct sk_buff const*,scalar_t__,int,struct ipv6hdr*) ;
 scalar_t__ skb_transport_offset (struct sk_buff const*) ;

__attribute__((used)) static void ip6_multipath_l3_keys(const struct sk_buff *skb,
      struct flow_keys *keys,
      struct flow_keys *flkeys)
{
 const struct ipv6hdr *outer_iph = ipv6_hdr(skb);
 const struct ipv6hdr *key_iph = outer_iph;
 struct flow_keys *_flkeys = flkeys;
 const struct ipv6hdr *inner_iph;
 const struct icmp6hdr *icmph;
 struct ipv6hdr _inner_iph;
 struct icmp6hdr _icmph;

 if (likely(outer_iph->nexthdr != IPPROTO_ICMPV6))
  goto out;

 icmph = skb_header_pointer(skb, skb_transport_offset(skb),
       sizeof(_icmph), &_icmph);
 if (!icmph)
  goto out;

 if (icmph->icmp6_type != ICMPV6_DEST_UNREACH &&
     icmph->icmp6_type != ICMPV6_PKT_TOOBIG &&
     icmph->icmp6_type != ICMPV6_TIME_EXCEED &&
     icmph->icmp6_type != ICMPV6_PARAMPROB)
  goto out;

 inner_iph = skb_header_pointer(skb,
           skb_transport_offset(skb) + sizeof(*icmph),
           sizeof(_inner_iph), &_inner_iph);
 if (!inner_iph)
  goto out;

 key_iph = inner_iph;
 _flkeys = ((void*)0);
out:
 if (_flkeys) {
  keys->addrs.v6addrs.src = _flkeys->addrs.v6addrs.src;
  keys->addrs.v6addrs.dst = _flkeys->addrs.v6addrs.dst;
  keys->tags.flow_label = _flkeys->tags.flow_label;
  keys->basic.ip_proto = _flkeys->basic.ip_proto;
 } else {
  keys->addrs.v6addrs.src = key_iph->saddr;
  keys->addrs.v6addrs.dst = key_iph->daddr;
  keys->tags.flow_label = ip6_flowlabel(key_iph);
  keys->basic.ip_proto = key_iph->nexthdr;
 }
}
