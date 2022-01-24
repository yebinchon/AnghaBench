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
struct timer_list {int dummy; } ;
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_state; } ;
struct nr_sock {int state; int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; } ;

/* Variables and functions */
 int NR_COND_ACK_PENDING ; 
 int NR_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  NR_INFOACK ; 
#define  NR_STATE_0 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct nr_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* sk ; 
 int /*<<< orphan*/  sk_timer ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct sock *sk = FUNC3(sk, t, sk_timer);
	struct nr_sock *nr = FUNC5(sk);

	FUNC1(sk);
	switch (nr->state) {
	case NR_STATE_0:
		/* Magic here: If we listen() and a new link dies before it
		   is accepted() it isn't 'dead' so doesn't get removed. */
		if (FUNC8(sk, SOCK_DESTROY) ||
		    (sk->sk_state == TCP_LISTEN && FUNC8(sk, SOCK_DEAD))) {
			FUNC9(sk);
			FUNC2(sk);
			FUNC4(sk);
			FUNC10(sk);
			return;
		}
		break;

	case NR_STATE_3:
		/*
		 * Check for the state of the receive buffer.
		 */
		if (FUNC0(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf / 2) &&
		    (nr->condition & NR_COND_OWN_RX_BUSY)) {
			nr->condition &= ~NR_COND_OWN_RX_BUSY;
			nr->condition &= ~NR_COND_ACK_PENDING;
			nr->vl         = nr->vr;
			FUNC7(sk, NR_INFOACK);
			break;
		}
		break;
	}

	FUNC6(sk);
	FUNC2(sk);
}