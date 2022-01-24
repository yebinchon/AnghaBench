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
struct sock {scalar_t__ sk_rcvlowat; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {unsigned int truesize; struct sock* sk; } ;
struct kcm_sock {int /*<<< orphan*/  rx_psock; int /*<<< orphan*/  rx_wait; struct kcm_mux* mux; } ;
struct kcm_mux {int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kcm_sock*) ; 
 struct kcm_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct kcm_sock *kcm = FUNC2(sk);
	struct kcm_mux *mux = kcm->mux;
	unsigned int len = skb->truesize;

	FUNC3(sk, len);
	FUNC0(len, &sk->sk_rmem_alloc);

	/* For reading rx_wait and rx_psock without holding lock */
	FUNC5();

	if (!kcm->rx_wait && !kcm->rx_psock &&
	    FUNC4(sk) < sk->sk_rcvlowat) {
		FUNC6(&mux->rx_lock);
		FUNC1(kcm);
		FUNC7(&mux->rx_lock);
	}
}