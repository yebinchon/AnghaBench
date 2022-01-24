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
struct ubuf_info {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; struct sock* sk; } ;
struct iov_iter {int dummy; } ;
struct msghdr {struct iov_iter msg_iter; } ;

/* Variables and functions */
 int EEXIST ; 
 int EFAULT ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct sock*,struct sk_buff*,struct iov_iter*,int) ; 
 struct ubuf_info* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct ubuf_info*,int /*<<< orphan*/ *) ; 

int FUNC4(struct sock *sk, struct sk_buff *skb,
			     struct msghdr *msg, int len,
			     struct ubuf_info *uarg)
{
	struct ubuf_info *orig_uarg = FUNC2(skb);
	struct iov_iter orig_iter = msg->msg_iter;
	int err, orig_len = skb->len;

	/* An skb can only point to one uarg. This edge case happens when
	 * TCP appends to an skb, but zerocopy_realloc triggered a new alloc.
	 */
	if (orig_uarg && uarg != orig_uarg)
		return -EEXIST;

	err = FUNC1(sk, skb, &msg->msg_iter, len);
	if (err == -EFAULT || (err == -EMSGSIZE && skb->len == orig_len)) {
		struct sock *save_sk = skb->sk;

		/* Streams do not free skb on error. Reset to prev state. */
		msg->msg_iter = orig_iter;
		skb->sk = sk;
		FUNC0(skb, orig_len);
		skb->sk = save_sk;
		return err;
	}

	FUNC3(skb, uarg, NULL);
	return skb->len - orig_len;
}