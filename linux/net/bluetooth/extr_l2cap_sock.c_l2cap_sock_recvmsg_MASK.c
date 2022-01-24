#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct msghdr {int dummy; } ;
struct l2cap_pinfo {TYPE_1__* chan; int /*<<< orphan*/ * rx_busy_skb; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ mode; int /*<<< orphan*/  conn_state; void* state; int /*<<< orphan*/  src_type; } ;

/* Variables and functions */
 void* BT_CONFIG ; 
 scalar_t__ BT_CONNECT2 ; 
 void* BT_CONNECTED ; 
 int /*<<< orphan*/  BT_SK_DEFER_SETUP ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int FUNC6 (struct socket*,struct msghdr*,size_t,int) ; 
 int FUNC7 (struct socket*,struct msghdr*,size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct l2cap_pinfo* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct socket *sock, struct msghdr *msg,
			      size_t len, int flags)
{
	struct sock *sk = sock->sk;
	struct l2cap_pinfo *pi = FUNC9(sk);
	int err;

	FUNC10(sk);

	if (sk->sk_state == BT_CONNECT2 && FUNC12(BT_SK_DEFER_SETUP,
						    &FUNC5(sk)->flags)) {
		if (FUNC4(pi->chan->src_type)) {
			sk->sk_state = BT_CONNECTED;
			pi->chan->state = BT_CONNECTED;
			FUNC1(pi->chan);
		} else {
			sk->sk_state = BT_CONFIG;
			pi->chan->state = BT_CONFIG;
			FUNC0(pi->chan);
		}

		err = 0;
		goto done;
	}

	FUNC11(sk);

	if (sock->type == SOCK_STREAM)
		err = FUNC7(sock, msg, len, flags);
	else
		err = FUNC6(sock, msg, len, flags);

	if (pi->chan->mode != L2CAP_MODE_ERTM)
		return err;

	/* Attempt to put pending rx data in the socket buffer */

	FUNC10(sk);

	if (!FUNC12(CONN_LOCAL_BUSY, &pi->chan->conn_state))
		goto done;

	if (pi->rx_busy_skb) {
		if (!FUNC2(sk, pi->rx_busy_skb))
			pi->rx_busy_skb = NULL;
		else
			goto done;
	}

	/* Restore data flow when half of the receive buffer is
	 * available.  This avoids resending large numbers of
	 * frames.
	 */
	if (FUNC3(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf >> 1)
		FUNC8(pi->chan, 0);

done:
	FUNC11(sk);
	return err;
}