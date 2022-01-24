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
struct TYPE_2__ {int /*<<< orphan*/  dep_map; } ;
struct sock {int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_rcvbuf; TYPE_1__ sk_lock; } ;
struct sk_buff {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 

int FUNC14(struct sock *sk, struct sk_buff *skb,
		     const int nested, unsigned int trim_cap, bool refcounted)
{
	int rc = NET_RX_SUCCESS;

	if (FUNC10(sk, skb, trim_cap))
		goto discard_and_relse;

	skb->dev = NULL;

	if (FUNC11(sk, sk->sk_rcvbuf)) {
		FUNC1(&sk->sk_drops);
		goto discard_and_relse;
	}
	if (nested)
		FUNC3(sk);
	else
		FUNC2(sk);
	if (!FUNC12(sk)) {
		/*
		 * trylock + unlock semantics:
		 */
		FUNC6(&sk->sk_lock.dep_map, 0, 1, _RET_IP_);

		rc = FUNC9(sk, skb);

		FUNC7(&sk->sk_lock.dep_map, 1, _RET_IP_);
	} else if (FUNC8(sk, skb, FUNC0(sk->sk_rcvbuf))) {
		FUNC4(sk);
		FUNC1(&sk->sk_drops);
		goto discard_and_relse;
	}

	FUNC4(sk);
out:
	if (refcounted)
		FUNC13(sk);
	return rc;
discard_and_relse:
	FUNC5(skb);
	goto out;
}