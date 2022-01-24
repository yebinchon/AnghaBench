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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct msghdr {int msg_flags; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int MSG_OOB ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,struct msghdr*,size_t) ; 
 int FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct msghdr *msg,
			    size_t len)
{
	struct sock *sk = sock->sk;
	int err;

	FUNC0("sock %p, sk %p", sock, sk);

	err = FUNC4(sk);
	if (err)
		return err;

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	FUNC1(sk);

	if (sk->sk_state == BT_CONNECTED)
		err = FUNC3(sk, msg, len);
	else
		err = -ENOTCONN;

	FUNC2(sk);
	return err;
}