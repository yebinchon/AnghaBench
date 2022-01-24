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
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;

/* Variables and functions */
 int EBADFD ; 
 scalar_t__ LLCP_BOUND ; 
 scalar_t__ LLCP_LISTEN ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	int ret = 0;

	FUNC1("sk %p backlog %d\n", sk, backlog);

	FUNC0(sk);

	if ((sock->type != SOCK_SEQPACKET && sock->type != SOCK_STREAM) ||
	    sk->sk_state != LLCP_BOUND) {
		ret = -EBADFD;
		goto error;
	}

	sk->sk_max_ack_backlog = backlog;
	sk->sk_ack_backlog = 0;

	FUNC1("Socket listening\n");
	sk->sk_state = LLCP_LISTEN;

error:
	FUNC2(sk);

	return ret;
}