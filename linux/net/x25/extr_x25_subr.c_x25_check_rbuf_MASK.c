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
struct x25_sock {int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; } ;
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;

/* Variables and functions */
 int X25_COND_ACK_PENDING ; 
 int X25_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  X25_RR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct x25_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC4(struct sock *sk)
{
	struct x25_sock *x25 = FUNC1(sk);

	if (FUNC0(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf >> 1) &&
	    (x25->condition & X25_COND_OWN_RX_BUSY)) {
		x25->condition &= ~X25_COND_OWN_RX_BUSY;
		x25->condition &= ~X25_COND_ACK_PENDING;
		x25->vl         = x25->vr;
		FUNC3(sk, X25_RR);
		FUNC2(sk);
	}
}