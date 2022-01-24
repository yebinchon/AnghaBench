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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sco_conn {int mtu; int /*<<< orphan*/  hcon; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_2__ {struct sco_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int MSG_DONTWAIT ; 
 struct sk_buff* FUNC1 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct msghdr*,int) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct msghdr *msg, int len)
{
	struct sco_conn *conn = FUNC5(sk)->conn;
	struct sk_buff *skb;
	int err;

	/* Check outgoing MTU */
	if (len > conn->mtu)
		return -EINVAL;

	FUNC0("sk %p len %d", sk, len);

	skb = FUNC1(sk, len, msg->msg_flags & MSG_DONTWAIT, &err);
	if (!skb)
		return err;

	if (FUNC4(FUNC6(skb, len), msg, len)) {
		FUNC3(skb);
		return -EFAULT;
	}

	FUNC2(conn->hcon, skb);

	return len;
}