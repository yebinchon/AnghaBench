#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; struct sock* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_2__ sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; scalar_t__ msg_namelen; } ;
struct TYPE_3__ {int tx_work_scheduled; int /*<<< orphan*/  tx_work; struct nfc_dev* dev; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 scalar_t__ SS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 struct sk_buff* FUNC3 (struct nfc_dev*,struct sock*,int /*<<< orphan*/ ,size_t,int*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct socket*,struct sock*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct nfc_dev *dev = FUNC4(sk)->dev;
	struct sk_buff *skb;
	int rc;

	FUNC5("sock=%p sk=%p len=%zu\n", sock, sk, len);

	if (msg->msg_namelen)
		return -EOPNOTSUPP;

	if (sock->state != SS_CONNECTED)
		return -ENOTCONN;

	skb = FUNC3(dev, sk, msg->msg_flags, len, &rc);
	if (skb == NULL)
		return rc;

	rc = FUNC2(FUNC7(skb, len), msg, len);
	if (rc < 0) {
		FUNC1(skb);
		return rc;
	}

	FUNC8(&sk->sk_write_queue.lock);
	FUNC0(&sk->sk_write_queue, skb);
	if (!FUNC4(sk)->tx_work_scheduled) {
		FUNC6(&FUNC4(sk)->tx_work);
		FUNC4(sk)->tx_work_scheduled = true;
	}
	FUNC9(&sk->sk_write_queue.lock);

	return len;
}