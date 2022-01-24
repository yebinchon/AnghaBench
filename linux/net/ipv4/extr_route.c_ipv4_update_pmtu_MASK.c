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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  mark; scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct flowi4*,int /*<<< orphan*/ *,struct iphdr const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC4 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*,struct flowi4*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtable*) ; 

void FUNC7(struct sk_buff *skb, struct net *net, u32 mtu,
		      int oif, u8 protocol)
{
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct flowi4 fl4;
	struct rtable *rt;
	u32 mark = FUNC0(net, skb->mark);

	FUNC3(net, &fl4, NULL, iph, oif,
			 FUNC2(iph->tos), protocol, mark, 0);
	rt = FUNC4(net, &fl4);
	if (!FUNC1(rt)) {
		FUNC5(rt, &fl4, mtu);
		FUNC6(rt);
	}
}