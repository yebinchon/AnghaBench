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
struct sock {int sk_err_soft; int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_v6_daddr; scalar_t__ sk_route_caps; } ;
struct sk_buff {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  tclass; int /*<<< orphan*/  opt; } ;
struct flowi6 {int /*<<< orphan*/  daddr; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*) ; 
 int FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct sock*,struct flowi6*) ; 
 struct ipv6_pinfo* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,struct flowi6*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct dst_entry*) ; 

int FUNC10(struct sock *sk, struct sk_buff *skb, struct flowi *fl_unused)
{
	struct ipv6_pinfo *np = FUNC3(sk);
	struct flowi6 fl6;
	struct dst_entry *dst;
	int res;

	dst = FUNC2(sk, &fl6);
	if (FUNC0(dst)) {
		sk->sk_err_soft = -FUNC1(dst);
		sk->sk_route_caps = 0;
		FUNC5(skb);
		return FUNC1(dst);
	}

	FUNC7();
	FUNC9(skb, dst);

	/* Restore final destination back after routing done */
	fl6.daddr = sk->sk_v6_daddr;

	res = FUNC4(sk, skb, &fl6, sk->sk_mark, FUNC6(np->opt),
		       np->tclass,  sk->sk_priority);
	FUNC8();
	return res;
}