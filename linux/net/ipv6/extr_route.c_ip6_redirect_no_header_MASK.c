#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct rd_msg {int /*<<< orphan*/  dest; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi6 {int flowi6_oif; int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_iif; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct dst_entry* FUNC2 (struct net*,struct flowi6*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ *) ; 

void FUNC6(struct sk_buff *skb, struct net *net, int oif)
{
	const struct ipv6hdr *iph = FUNC3(skb);
	const struct rd_msg *msg = (struct rd_msg *)FUNC1(skb);
	struct dst_entry *dst;
	struct flowi6 fl6 = {
		.flowi6_iif = LOOPBACK_IFINDEX,
		.flowi6_oif = oif,
		.daddr = msg->dest,
		.saddr = iph->daddr,
		.flowi6_uid = FUNC5(net, NULL),
	};

	dst = FUNC2(net, &fl6, skb, &iph->saddr);
	FUNC4(dst, NULL, skb);
	FUNC0(dst);
}