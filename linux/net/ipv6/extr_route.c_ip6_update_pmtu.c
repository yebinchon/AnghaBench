
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int mark; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct flowi6 {int flowi6_oif; int flowi6_uid; int flowlabel; int saddr; int daddr; int flowi6_mark; } ;
struct dst_entry {int error; } ;
typedef int kuid_t ;
typedef int __be32 ;


 int IP6_REPLY_MARK (struct net*,int ) ;
 int __ip6_rt_update_pmtu (struct dst_entry*,int *,struct ipv6hdr const*,int ) ;
 int dst_release (struct dst_entry*) ;
 int ip6_flowinfo (struct ipv6hdr const*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi6*) ;
 int ntohl (int ) ;

void ip6_update_pmtu(struct sk_buff *skb, struct net *net, __be32 mtu,
       int oif, u32 mark, kuid_t uid)
{
 const struct ipv6hdr *iph = (struct ipv6hdr *) skb->data;
 struct dst_entry *dst;
 struct flowi6 fl6 = {
  .flowi6_oif = oif,
  .flowi6_mark = mark ? mark : IP6_REPLY_MARK(net, skb->mark),
  .daddr = iph->daddr,
  .saddr = iph->saddr,
  .flowlabel = ip6_flowinfo(iph),
  .flowi6_uid = uid,
 };

 dst = ip6_route_output(net, ((void*)0), &fl6);
 if (!dst->error)
  __ip6_rt_update_pmtu(dst, ((void*)0), iph, ntohl(mtu));
 dst_release(dst);
}
