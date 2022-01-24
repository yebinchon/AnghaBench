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
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;

/* Variables and functions */
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*,size_t,int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sock*,int,int,int*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct msghdr *msg, size_t len,
			   int flags)
{
	int noblock = flags & MSG_DONTWAIT;
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int copied;
	int rc;

	FUNC0("sock=%p sk=%p len=%zu flags=%d\n", sock, sk, len, flags);

	skb = FUNC3(sk, flags, noblock, &rc);
	if (!skb)
		return rc;

	copied = skb->len;
	if (len < copied) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	rc = FUNC1(skb, 0, msg, copied);

	FUNC2(sk, skb);

	return rc ? : copied;
}