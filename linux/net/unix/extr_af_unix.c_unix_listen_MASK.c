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
struct unix_sock {int /*<<< orphan*/  peer_wait; int /*<<< orphan*/  addr; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct pid*) ; 
 struct unix_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, int backlog)
{
	int err;
	struct sock *sk = sock->sk;
	struct unix_sock *u = FUNC2(sk);
	struct pid *old_pid = NULL;

	err = -EOPNOTSUPP;
	if (sock->type != SOCK_STREAM && sock->type != SOCK_SEQPACKET)
		goto out;	/* Only stream/seqpacket sockets accept */
	err = -EINVAL;
	if (!u->addr)
		goto out;	/* No listens on an unbound socket */
	FUNC3(sk);
	if (sk->sk_state != TCP_CLOSE && sk->sk_state != TCP_LISTEN)
		goto out_unlock;
	if (backlog > sk->sk_max_ack_backlog)
		FUNC5(&u->peer_wait);
	sk->sk_max_ack_backlog	= backlog;
	sk->sk_state		= TCP_LISTEN;
	/* set credentials so connect can copy them */
	FUNC0(sk);
	err = 0;

out_unlock:
	FUNC4(sk);
	FUNC1(old_pid);
out:
	return err;
}