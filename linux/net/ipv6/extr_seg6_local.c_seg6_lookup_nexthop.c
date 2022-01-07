
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {TYPE_3__* dev; int mark; } ;
struct dst_entry {int error; TYPE_1__* dev; } ;
struct rt6_info {struct dst_entry dst; } ;
struct TYPE_6__ {struct rt6_info* ip6_blk_hole_entry; } ;
struct net {TYPE_2__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int nexthdr; int saddr; struct in6_addr daddr; } ;
struct flowi6 {int flowi6_flags; int flowi6_proto; int flowi6_mark; int flowlabel; int saddr; struct in6_addr daddr; int flowi6_iif; } ;
struct fib6_table {int dummy; } ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_5__ {int flags; } ;


 int FLOWI_FLAG_KNOWN_NH ;
 int IFF_LOOPBACK ;
 int RT6_LOOKUP_F_HAS_SADDR ;
 struct net* dev_net (TYPE_3__*) ;
 int dst_hold (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct fib6_table* fib6_get_table (struct net*,int ) ;
 int ip6_flowinfo (struct ipv6hdr*) ;
 struct rt6_info* ip6_pol_route (struct net*,struct fib6_table*,int ,struct flowi6*,struct sk_buff*,int) ;
 struct dst_entry* ip6_route_input_lookup (struct net*,TYPE_3__*,struct flowi6*,struct sk_buff*,int) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

int seg6_lookup_nexthop(struct sk_buff *skb, struct in6_addr *nhaddr,
   u32 tbl_id)
{
 struct net *net = dev_net(skb->dev);
 struct ipv6hdr *hdr = ipv6_hdr(skb);
 int flags = RT6_LOOKUP_F_HAS_SADDR;
 struct dst_entry *dst = ((void*)0);
 struct rt6_info *rt;
 struct flowi6 fl6;

 fl6.flowi6_iif = skb->dev->ifindex;
 fl6.daddr = nhaddr ? *nhaddr : hdr->daddr;
 fl6.saddr = hdr->saddr;
 fl6.flowlabel = ip6_flowinfo(hdr);
 fl6.flowi6_mark = skb->mark;
 fl6.flowi6_proto = hdr->nexthdr;

 if (nhaddr)
  fl6.flowi6_flags = FLOWI_FLAG_KNOWN_NH;

 if (!tbl_id) {
  dst = ip6_route_input_lookup(net, skb->dev, &fl6, skb, flags);
 } else {
  struct fib6_table *table;

  table = fib6_get_table(net, tbl_id);
  if (!table)
   goto out;

  rt = ip6_pol_route(net, table, 0, &fl6, skb, flags);
  dst = &rt->dst;
 }

 if (dst && dst->dev->flags & IFF_LOOPBACK && !dst->error) {
  dst_release(dst);
  dst = ((void*)0);
 }

out:
 if (!dst) {
  rt = net->ipv6.ip6_blk_hole_entry;
  dst = &rt->dst;
  dst_hold(dst);
 }

 skb_dst_drop(skb);
 skb_dst_set(skb, dst);
 return dst->error;
}
