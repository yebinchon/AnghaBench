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
struct vsock_sock {int /*<<< orphan*/  local_addr; } ;
struct socket {scalar_t__ type; scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ SS_UNCONNECTED ; 
 int /*<<< orphan*/  TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vsock_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, int backlog)
{
	int err;
	struct sock *sk;
	struct vsock_sock *vsk;

	sk = sock->sk;

	FUNC0(sk);

	if (sock->type != SOCK_STREAM) {
		err = -EOPNOTSUPP;
		goto out;
	}

	if (sock->state != SS_UNCONNECTED) {
		err = -EINVAL;
		goto out;
	}

	vsk = FUNC3(sk);

	if (!FUNC2(&vsk->local_addr)) {
		err = -EINVAL;
		goto out;
	}

	sk->sk_max_ack_backlog = backlog;
	sk->sk_state = TCP_LISTEN;

	err = 0;

out:
	FUNC1(sk);
	return err;
}