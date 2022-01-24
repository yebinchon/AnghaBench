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
struct sock {int sk_state; int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct l2cap_chan {int state; int /*<<< orphan*/  nesting; struct sock* data; } ;
struct TYPE_2__ {struct sock* parent; } ;

/* Variables and functions */
#define  BT_BOUND 131 
#define  BT_CLOSED 130 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,int /*<<< orphan*/ ) ; 
#define  BT_LISTEN 129 
#define  BT_OPEN 128 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct l2cap_chan *chan, int err)
{
	struct sock *sk = chan->data;
	struct sock *parent;

	FUNC0("chan %p state %s", chan, FUNC8(chan->state));

	/* This callback can be called both for server (BT_LISTEN)
	 * sockets as well as "normal" ones. To avoid lockdep warnings
	 * with child socket locking (through l2cap_sock_cleanup_listen)
	 * we need separation into separate nesting levels. The simplest
	 * way to accomplish this is to inherit the nesting level used
	 * for the channel.
	 */
	FUNC5(sk, FUNC1(&chan->nesting));

	parent = FUNC3(sk)->parent;

	FUNC7(sk, SOCK_ZAPPED);

	switch (chan->state) {
	case BT_OPEN:
	case BT_BOUND:
	case BT_CLOSED:
		break;
	case BT_LISTEN:
		FUNC4(sk);
		sk->sk_state = BT_CLOSED;
		chan->state = BT_CLOSED;

		break;
	default:
		sk->sk_state = BT_CLOSED;
		chan->state = BT_CLOSED;

		sk->sk_err = err;

		if (parent) {
			FUNC2(sk);
			parent->sk_data_ready(parent);
		} else {
			sk->sk_state_change(sk);
		}

		break;
	}

	FUNC6(sk);
}