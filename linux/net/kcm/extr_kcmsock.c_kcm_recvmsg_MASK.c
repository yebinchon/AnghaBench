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
struct strp_msg {size_t full_len; int offset; } ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_msgs; int /*<<< orphan*/  rx_bytes; } ;
struct kcm_sock {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  MSG_EOR ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 scalar_t__ SOCK_DGRAM ; 
 struct kcm_sock* FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (struct sock*,int,long,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct sk_buff*,int,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 long FUNC10 (struct sock*,int) ; 
 struct strp_msg* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct msghdr *msg,
		       size_t len, int flags)
{
	struct sock *sk = sock->sk;
	struct kcm_sock *kcm = FUNC2(sk);
	int err = 0;
	long timeo;
	struct strp_msg *stm;
	int copied = 0;
	struct sk_buff *skb;

	timeo = FUNC10(sk, flags & MSG_DONTWAIT);

	FUNC6(sk);

	skb = FUNC3(sk, flags, timeo, &err);
	if (!skb)
		goto out;

	/* Okay, have a message on the receive queue */

	stm = FUNC11(skb);

	if (len > stm->full_len)
		len = stm->full_len;

	err = FUNC8(skb, stm->offset, msg, len);
	if (err < 0)
		goto out;

	copied = len;
	if (FUNC5(!(flags & MSG_PEEK))) {
		FUNC0(kcm->stats.rx_bytes, copied);
		if (copied < stm->full_len) {
			if (sock->type == SOCK_DGRAM) {
				/* Truncated message */
				msg->msg_flags |= MSG_TRUNC;
				goto msg_finished;
			}
			stm->offset += copied;
			stm->full_len -= copied;
		} else {
msg_finished:
			/* Finished with message */
			msg->msg_flags |= MSG_EOR;
			FUNC1(kcm->stats.rx_msgs);
			FUNC9(skb, &sk->sk_receive_queue);
			FUNC4(skb);
		}
	}

out:
	FUNC7(sk);

	return copied ? : err;
}