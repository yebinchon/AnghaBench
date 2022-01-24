#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {TYPE_3__* dev; int /*<<< orphan*/  mark; } ;
struct dst_entry {int error; TYPE_1__* dev; } ;
struct rt6_info {struct dst_entry dst; } ;
struct TYPE_6__ {struct rt6_info* ip6_blk_hole_entry; } ;
struct net {TYPE_2__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  saddr; struct in6_addr daddr; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_flags; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  saddr; struct in6_addr daddr; int /*<<< orphan*/  flowi6_iif; } ;
struct fib6_table {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOWI_FLAG_KNOWN_NH ; 
 int IFF_LOOPBACK ; 
 int RT6_LOOKUP_F_HAS_SADDR ; 
 struct net* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 struct fib6_table* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6hdr*) ; 
 struct rt6_info* FUNC5 (struct net*,struct fib6_table*,int /*<<< orphan*/ ,struct flowi6*,struct sk_buff*,int) ; 
 struct dst_entry* FUNC6 (struct net*,TYPE_3__*,struct flowi6*,struct sk_buff*,int) ; 
 struct ipv6hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct dst_entry*) ; 

int FUNC10(struct sk_buff *skb, struct in6_addr *nhaddr,
			u32 tbl_id)
{
	struct net *net = FUNC0(skb->dev);
	struct ipv6hdr *hdr = FUNC7(skb);
	int flags = RT6_LOOKUP_F_HAS_SADDR;
	struct dst_entry *dst = NULL;
	struct rt6_info *rt;
	struct flowi6 fl6;

	fl6.flowi6_iif = skb->dev->ifindex;
	fl6.daddr = nhaddr ? *nhaddr : hdr->daddr;
	fl6.saddr = hdr->saddr;
	fl6.flowlabel = FUNC4(hdr);
	fl6.flowi6_mark = skb->mark;
	fl6.flowi6_proto = hdr->nexthdr;

	if (nhaddr)
		fl6.flowi6_flags = FLOWI_FLAG_KNOWN_NH;

	if (!tbl_id) {
		dst = FUNC6(net, skb->dev, &fl6, skb, flags);
	} else {
		struct fib6_table *table;

		table = FUNC3(net, tbl_id);
		if (!table)
			goto out;

		rt = FUNC5(net, table, 0, &fl6, skb, flags);
		dst = &rt->dst;
	}

	if (dst && dst->dev->flags & IFF_LOOPBACK && !dst->error) {
		FUNC2(dst);
		dst = NULL;
	}

out:
	if (!dst) {
		rt = net->ipv6.ip6_blk_hole_entry;
		dst = &rt->dst;
		FUNC1(dst);
	}

	FUNC8(skb);
	FUNC9(skb, dst);
	return dst->error;
}