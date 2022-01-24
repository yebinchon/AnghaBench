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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; TYPE_1__* dev; scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct flowi4 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct flowi4*,struct sock*,struct iphdr const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtable*,struct sk_buff*,struct flowi4*,int) ; 
 struct net* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct dst_entry *dst, struct sock *sk, struct sk_buff *skb)
{
	struct rtable *rt;
	struct flowi4 fl4;
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct net *net = FUNC3(skb->dev);
	int oif = skb->dev->ifindex;
	u8 tos = FUNC0(iph->tos);
	u8 prot = iph->protocol;
	u32 mark = skb->mark;

	rt = (struct rtable *) dst;

	FUNC1(net, &fl4, sk, iph, oif, tos, prot, mark, 0);
	FUNC2(rt, skb, &fl4, true);
}