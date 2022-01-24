#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct flowi6 {int flowi6_oif; int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  flowlabel; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_iif; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6hdr const*) ; 
 struct dst_entry* FUNC2 (struct net*,struct flowi6*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC5(struct sk_buff *skb, struct net *net, int oif, u32 mark,
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
		.flowlabel = FUNC1(iph),
		.flowi6_uid = uid,
	};

	dst = FUNC2(net, &fl6, skb, &FUNC3(skb)->saddr);
	FUNC4(dst, NULL, skb);
	FUNC0(dst);
}