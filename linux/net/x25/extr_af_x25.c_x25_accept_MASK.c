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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/  sk_ack_backlog; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_rcvtimeo; } ;
struct sk_buff {struct sock* sk; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct socket*) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct socket *newsock, int flags,
		      bool kern)
{
	struct sock *sk = sock->sk;
	struct sock *newsk;
	struct sk_buff *skb;
	int rc = -EINVAL;

	if (!sk)
		goto out;

	rc = -EOPNOTSUPP;
	if (sk->sk_type != SOCK_SEQPACKET)
		goto out;

	FUNC1(sk);
	rc = -EINVAL;
	if (sk->sk_state != TCP_LISTEN)
		goto out2;

	rc = FUNC5(sk, sk->sk_rcvtimeo);
	if (rc)
		goto out2;
	skb = FUNC3(&sk->sk_receive_queue);
	rc = -EINVAL;
	if (!skb->sk)
		goto out2;
	newsk		 = skb->sk;
	FUNC4(newsk, newsock);

	/* Now attach up the new socket */
	skb->sk = NULL;
	FUNC0(skb);
	sk->sk_ack_backlog--;
	newsock->state = SS_CONNECTED;
	rc = 0;
out2:
	FUNC2(sk);
out:
	return rc;
}