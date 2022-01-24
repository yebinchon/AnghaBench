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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  mark; TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;
struct rtable {TYPE_2__ dst; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  tos; int /*<<< orphan*/  saddr; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_iif; int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct fib_result {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fib_result*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtable*,int /*<<< orphan*/ ) ; 

void FUNC11(u8 *addr, struct sk_buff *skb, struct rtable *rt)
{
	__be32 src;

	if (FUNC9(rt))
		src = FUNC5(skb)->saddr;
	else {
		struct fib_result res;
		struct iphdr *iph = FUNC5(skb);
		struct flowi4 fl4 = {
			.daddr = iph->daddr,
			.saddr = iph->saddr,
			.flowi4_tos = FUNC0(iph->tos),
			.flowi4_oif = rt->dst.dev->ifindex,
			.flowi4_iif = skb->dev->ifindex,
			.flowi4_mark = skb->mark,
		};

		FUNC7();
		if (FUNC2(FUNC1(rt->dst.dev), &fl4, &res, 0) == 0)
			src = FUNC3(FUNC1(rt->dst.dev), &res);
		else
			src = FUNC4(rt->dst.dev,
					       FUNC10(rt, iph->daddr),
					       RT_SCOPE_UNIVERSE);
		FUNC8();
	}
	FUNC6(addr, &src, 4);
}