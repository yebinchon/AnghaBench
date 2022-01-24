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
struct rose_sock {int state; int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; } ;

/* Variables and functions */
 int ROSE_COND_ACK_PENDING ; 
 int ROSE_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  ROSE_RR ; 
#define  ROSE_STATE_0 129 
#define  ROSE_STATE_3 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct rose_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* sk ; 
 int /*<<< orphan*/  sk_timer ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct sock *sk = FUNC3(sk, t, sk_timer);
	struct rose_sock *rose = FUNC5(sk);

	FUNC1(sk);
	switch (rose->state) {
	case ROSE_STATE_0:
		/* Magic here: If we listen() and a new link dies before it
		   is accepted() it isn't 'dead' so doesn't get removed. */
		if (FUNC9(sk, SOCK_DESTROY) ||
		    (sk->sk_state == TCP_LISTEN && FUNC9(sk, SOCK_DEAD))) {
			FUNC2(sk);
			FUNC4(sk);
			return;
		}
		break;

	case ROSE_STATE_3:
		/*
		 * Check for the state of the receive buffer.
		 */
		if (FUNC0(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf / 2) &&
		    (rose->condition & ROSE_COND_OWN_RX_BUSY)) {
			rose->condition &= ~ROSE_COND_OWN_RX_BUSY;
			rose->condition &= ~ROSE_COND_ACK_PENDING;
			rose->vl         = rose->vr;
			FUNC8(sk, ROSE_RR);
			FUNC7(sk);	/* HB */
			break;
		}
		break;
	}

	FUNC6(sk);
	FUNC2(sk);
}