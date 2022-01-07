
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct flowi6 {int flowi6_oif; int flowi6_uid; int flowlabel; int saddr; int daddr; int flowi6_mark; int flowi6_iif; } ;
struct dst_entry {int dummy; } ;
typedef int kuid_t ;
struct TYPE_2__ {int saddr; } ;


 int LOOPBACK_IFINDEX ;
 int dst_release (struct dst_entry*) ;
 int ip6_flowinfo (struct ipv6hdr const*) ;
 struct dst_entry* ip6_route_redirect (struct net*,struct flowi6*,struct sk_buff*,int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int rt6_do_redirect (struct dst_entry*,int *,struct sk_buff*) ;

void ip6_redirect(struct sk_buff *skb, struct net *net, int oif, u32 mark,
    kuid_t uid)
{
 const struct ipv6hdr *iph = (struct ipv6hdr *) skb->data;
 struct dst_entry *dst;
 struct flowi6 fl6 = {
  .flowi6_iif = LOOPBACK_IFINDEX,
  .flowi6_oif = oif,
  .flowi6_mark = mark,
  .daddr = iph->daddr,
  .saddr = iph->saddr,
  .flowlabel = ip6_flowinfo(iph),
  .flowi6_uid = uid,
 };

 dst = ip6_route_redirect(net, &fl6, skb, &ipv6_hdr(skb)->saddr);
 rt6_do_redirect(dst, ((void*)0), skb);
 dst_release(dst);
}
