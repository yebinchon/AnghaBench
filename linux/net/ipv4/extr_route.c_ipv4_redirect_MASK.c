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
struct sk_buff {scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  tos; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct flowi4*,int /*<<< orphan*/ *,struct iphdr const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtable*,struct sk_buff*,struct flowi4*,int) ; 
 struct rtable* FUNC4 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 

void FUNC6(struct sk_buff *skb, struct net *net,
		   int oif, u8 protocol)
{
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct flowi4 fl4;
	struct rtable *rt;

	FUNC2(net, &fl4, NULL, iph, oif,
			 FUNC1(iph->tos), protocol, 0, 0);
	rt = FUNC4(net, &fl4);
	if (!FUNC0(rt)) {
		FUNC3(rt, skb, &fl4, false);
		FUNC5(rt);
	}
}