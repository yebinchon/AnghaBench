#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_state; } ;
struct TYPE_6__ {int state; int condition; struct sock* sk; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int AX25_COND_ACK_PENDING ; 
 int AX25_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  AX25_POLLOFF ; 
 int /*<<< orphan*/  AX25_RESPONSE ; 
 int /*<<< orphan*/  AX25_RR ; 
#define  AX25_STATE_0 131 
#define  AX25_STATE_2 130 
#define  AX25_STATE_3 129 
#define  AX25_STATE_4 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DESTROY ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

void FUNC9(ax25_cb *ax25)
{
	struct sock *sk = ax25->sk;

	if (sk)
		FUNC4(sk);

	switch (ax25->state) {
	case AX25_STATE_0:
	case AX25_STATE_2:
		/* Magic here: If we listen() and a new link dies before it
		   is accepted() it isn't 'dead' so doesn't get removed. */
		if (!sk || FUNC6(sk, SOCK_DESTROY) ||
		    (sk->sk_state == TCP_LISTEN &&
		     FUNC6(sk, SOCK_DEAD))) {
			if (sk) {
				FUNC7(sk);
				FUNC1(ax25);
				FUNC5(sk);
				/* Ungrab socket and destroy it */
				FUNC8(sk);
			} else
				FUNC1(ax25);
			return;
		}
		break;

	case AX25_STATE_3:
	case AX25_STATE_4:
		/*
		 * Check the state of the receive buffer.
		 */
		if (sk != NULL) {
			if (FUNC0(&sk->sk_rmem_alloc) <
			    (sk->sk_rcvbuf >> 1) &&
			    (ax25->condition & AX25_COND_OWN_RX_BUSY)) {
				ax25->condition &= ~AX25_COND_OWN_RX_BUSY;
				ax25->condition &= ~AX25_COND_ACK_PENDING;
				FUNC2(ax25, AX25_RR, AX25_POLLOFF, AX25_RESPONSE);
				break;
			}
		}
	}

	if (sk)
		FUNC5(sk);

	FUNC3(ax25);
}