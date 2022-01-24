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
struct sk_buff {unsigned int len; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_2__ {int channel; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int EOPNOTSUPP ; 
 int HCI_CHANNEL_LOGGING ; 
#define  HCI_CHANNEL_MONITOR 130 
#define  HCI_CHANNEL_RAW 129 
#define  HCI_CHANNEL_USER 128 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct msghdr*,struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,struct msghdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct msghdr *msg,
			    size_t len, int flags)
{
	int noblock = flags & MSG_DONTWAIT;
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	int copied, err;
	unsigned int skblen;

	FUNC0("sock %p, sk %p", sock, sk);

	if (flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (FUNC2(sk)->channel == HCI_CHANNEL_LOGGING)
		return -EOPNOTSUPP;

	if (sk->sk_state == BT_CLOSED)
		return 0;

	skb = FUNC6(sk, flags, noblock, &err);
	if (!skb)
		return err;

	skblen = skb->len;
	copied = skb->len;
	if (len < copied) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	FUNC7(skb);
	err = FUNC4(skb, 0, msg, copied);

	switch (FUNC2(sk)->channel) {
	case HCI_CHANNEL_RAW:
		FUNC3(sk, msg, skb);
		break;
	case HCI_CHANNEL_USER:
	case HCI_CHANNEL_MONITOR:
		FUNC8(msg, sk, skb);
		break;
	default:
		if (FUNC1(FUNC2(sk)->channel))
			FUNC8(msg, sk, skb);
		break;
	}

	FUNC5(sk, skb);

	if (flags & MSG_TRUNC)
		copied = skblen;

	return err ? : copied;
}