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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct flowi4 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct flowi4*,struct sock*,struct iphdr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtable*,struct flowi4*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*) ; 
 struct rtable* FUNC8 (struct net*,struct flowi4*,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct dst_entry* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct dst_entry*) ; 
 struct net* FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct dst_entry*) ; 

void FUNC16(struct sk_buff *skb, struct sock *sk, u32 mtu)
{
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct flowi4 fl4;
	struct rtable *rt;
	struct dst_entry *odst = NULL;
	bool new = false;
	struct net *net = FUNC12(sk);

	FUNC4(sk);

	if (!FUNC9(sk))
		goto out;

	odst = FUNC10(sk);

	if (FUNC13(sk) || !odst) {
		FUNC3(skb, sk, mtu);
		goto out;
	}

	FUNC1(net, &fl4, sk, iph, 0, 0, 0, 0, 0);

	rt = (struct rtable *)odst;
	if (odst->obsolete && !odst->ops->check(odst, 0)) {
		rt = FUNC8(FUNC12(sk), &fl4, sk);
		if (FUNC0(rt))
			goto out;

		new = true;
	}

	FUNC2((struct rtable *) FUNC15(&rt->dst), &fl4, mtu);

	if (!FUNC6(&rt->dst, 0)) {
		if (new)
			FUNC7(&rt->dst);

		rt = FUNC8(FUNC12(sk), &fl4, sk);
		if (FUNC0(rt))
			goto out;

		new = true;
	}

	if (new)
		FUNC11(sk, &rt->dst);

out:
	FUNC5(sk);
	FUNC7(odst);
}