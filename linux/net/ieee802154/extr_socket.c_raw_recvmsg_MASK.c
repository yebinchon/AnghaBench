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
struct sock {int dummy; } ;
struct sk_buff {size_t len; } ;
struct msghdr {int msg_flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MSG_TRUNC ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct msghdr *msg, size_t len,
		       int noblock, int flags, int *addr_len)
{
	size_t copied = 0;
	int err = -EOPNOTSUPP;
	struct sk_buff *skb;

	skb = FUNC2(sk, flags, noblock, &err);
	if (!skb)
		goto out;

	copied = skb->len;
	if (len < copied) {
		msg->msg_flags |= MSG_TRUNC;
		copied = len;
	}

	err = FUNC0(skb, 0, msg, copied);
	if (err)
		goto done;

	FUNC3(msg, sk, skb);

	if (flags & MSG_TRUNC)
		copied = skb->len;
done:
	FUNC1(sk, skb);
out:
	if (err)
		return err;
	return copied;
}