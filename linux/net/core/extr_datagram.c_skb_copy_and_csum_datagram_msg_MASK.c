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
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  csum_complete_sw; int /*<<< orphan*/  csum; int /*<<< orphan*/  data; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int,struct msghdr*,int) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct sk_buff *skb,
				   int hlen, struct msghdr *msg)
{
	__wsum csum;
	int chunk = skb->len - hlen;

	if (!chunk)
		return 0;

	if (FUNC4(msg) < chunk) {
		if (FUNC0(skb))
			return -EINVAL;
		if (FUNC7(skb, hlen, msg, chunk))
			goto fault;
	} else {
		csum = FUNC2(skb->data, hlen, skb->csum);
		if (FUNC6(skb, hlen, &msg->msg_iter,
					       chunk, &csum))
			goto fault;

		if (FUNC1(csum)) {
			FUNC3(&msg->msg_iter, chunk);
			return -EINVAL;
		}

		if (FUNC8(skb->ip_summed == CHECKSUM_COMPLETE) &&
		    !skb->csum_complete_sw)
			FUNC5(NULL, skb);
	}
	return 0;
fault:
	return -EFAULT;
}