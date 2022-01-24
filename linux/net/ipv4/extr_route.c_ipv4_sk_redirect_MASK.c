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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct flowi4*,struct sock*,struct iphdr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtable*,struct sk_buff*,struct flowi4*,int) ; 
 struct rtable* FUNC3 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*) ; 
 struct net* FUNC5 (struct sock*) ; 

void FUNC6(struct sk_buff *skb, struct sock *sk)
{
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct flowi4 fl4;
	struct rtable *rt;
	struct net *net = FUNC5(sk);

	FUNC1(net, &fl4, sk, iph, 0, 0, 0, 0, 0);
	rt = FUNC3(net, &fl4);
	if (!FUNC0(rt)) {
		FUNC2(rt, skb, &fl4, false);
		FUNC4(rt);
	}
}