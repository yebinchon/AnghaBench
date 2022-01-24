#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int sk_err; scalar_t__ sk_lingertime; scalar_t__ sk_shutdown; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_chan {scalar_t__ state; scalar_t__ mode; scalar_t__ unacked_frames; struct l2cap_conn* conn; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 int PF_EXITING ; 
 scalar_t__ SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int FUNC1 (struct sock*,struct l2cap_chan*) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*) ; 
 TYPE_1__* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct socket *sock, int how)
{
	struct sock *sk = sock->sk;
	struct l2cap_chan *chan;
	struct l2cap_conn *conn;
	int err = 0;

	FUNC0("sock %p, sk %p", sock, sk);

	if (!sk)
		return 0;

	FUNC11(sk);

	if (sk->sk_shutdown)
		goto shutdown_already;

	FUNC0("Handling sock shutdown");

	/* prevent sk structure from being freed whilst unlocked */
	FUNC16(sk);

	chan = FUNC10(sk)->chan;
	/* prevent chan structure from being freed whilst unlocked */
	FUNC4(chan);

	FUNC0("chan %p state %s", chan, FUNC18(chan->state));

	if (chan->mode == L2CAP_MODE_ERTM &&
	    chan->unacked_frames > 0 &&
	    chan->state == BT_CONNECTED) {
		err = FUNC1(sk, chan);

		/* After waiting for ACKs, check whether shutdown
		 * has already been actioned to close the L2CAP
		 * link such as by l2cap_disconnection_req().
		 */
		if (sk->sk_shutdown)
			goto has_shutdown;
	}

	sk->sk_shutdown = SHUTDOWN_MASK;
	FUNC14(sk);

	FUNC5(chan);
	conn = chan->conn;
	if (conn)
		/* prevent conn structure from being freed */
		FUNC8(conn);
	FUNC7(chan);

	if (conn)
		/* mutex lock must be taken before l2cap_chan_lock() */
		FUNC12(&conn->chan_lock);

	FUNC5(chan);
	FUNC3(chan, 0);
	FUNC7(chan);

	if (conn) {
		FUNC13(&conn->chan_lock);
		FUNC9(conn);
	}

	FUNC11(sk);

	if (FUNC15(sk, SOCK_LINGER) && sk->sk_lingertime &&
	    !(current->flags & PF_EXITING))
		err = FUNC2(sk, BT_CLOSED,
					 sk->sk_lingertime);

has_shutdown:
	FUNC6(chan);
	FUNC17(sk);

shutdown_already:
	if (!err && sk->sk_err)
		err = -sk->sk_err;

	FUNC14(sk);

	FUNC0("Sock shutdown complete err: %d", err);

	return err;
}