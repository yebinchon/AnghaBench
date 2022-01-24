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
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct TYPE_2__ {scalar_t__ skb_parser; } ;
struct sk_psock {int /*<<< orphan*/  rcu; TYPE_1__ progs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SK_PSOCK_TX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_psock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_psock*) ; 
 int /*<<< orphan*/  sk_psock_destroy ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct sock *sk, struct sk_psock *psock)
{
	FUNC3(psock);
	FUNC6(psock);

	FUNC7(&sk->sk_callback_lock);
	FUNC4(sk, psock);
	FUNC1(sk, NULL);
	if (psock->progs.skb_parser)
		FUNC5(sk, psock);
	FUNC8(&sk->sk_callback_lock);
	FUNC2(psock, SK_PSOCK_TX_ENABLED);

	FUNC0(&psock->rcu, sk_psock_destroy);
}