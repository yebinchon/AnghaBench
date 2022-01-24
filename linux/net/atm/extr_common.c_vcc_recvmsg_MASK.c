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
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int len; int /*<<< orphan*/  truesize; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 scalar_t__ SS_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct msghdr*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct socket *sock, struct msghdr *msg, size_t size,
		int flags)
{
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc;
	struct sk_buff *skb;
	int copied, error = -EINVAL;

	if (sock->state != SS_CONNECTED)
		return -ENOTCONN;

	/* only handle MSG_DONTWAIT and MSG_PEEK */
	if (flags & ~(MSG_DONTWAIT | MSG_PEEK))
		return -EOPNOTSUPP;

	vcc = FUNC0(sock);
	if (FUNC8(ATM_VF_RELEASED, &vcc->flags) ||
	    FUNC8(ATM_VF_CLOSE, &vcc->flags) ||
	    !FUNC8(ATM_VF_READY, &vcc->flags))
		return 0;

	skb = FUNC6(sk, flags, flags & MSG_DONTWAIT, &error);
	if (!skb)
		return error;

	copied = skb->len;
	if (copied > size) {
		copied = size;
		msg->msg_flags |= MSG_TRUNC;
	}

	error = FUNC4(skb, 0, msg, copied);
	if (error)
		return error;
	FUNC7(msg, sk, skb);

	if (!(flags & MSG_PEEK)) {
		FUNC3("%d -= %d\n", FUNC2(&sk->sk_rmem_alloc),
			 skb->truesize);
		FUNC1(vcc, skb->truesize);
	}

	FUNC5(sk, skb);
	return copied;
}