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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {int msg_flags; } ;
struct l2cap_chan {int dummy; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int MSG_OOB ; 
 int FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int FUNC3 (struct l2cap_chan*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct msghdr *msg,
			      size_t len)
{
	struct sock *sk = sock->sk;
	struct l2cap_chan *chan = FUNC5(sk)->chan;
	int err;

	FUNC0("sock %p, sk %p", sock, sk);

	err = FUNC8(sk);
	if (err)
		return err;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (sk->sk_state != BT_CONNECTED)
		return -ENOTCONN;

	FUNC6(sk);
	err = FUNC1(sk, msg->msg_flags);
	FUNC7(sk);
	if (err)
		return err;

	FUNC2(chan);
	err = FUNC3(chan, msg, len);
	FUNC4(chan);

	return err;
}