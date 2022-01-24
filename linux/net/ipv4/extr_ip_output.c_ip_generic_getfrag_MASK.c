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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC3(void *from, char *to, int offset, int len, int odd, struct sk_buff *skb)
{
	struct msghdr *msg = from;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (!FUNC0(to, len, &msg->msg_iter))
			return -EFAULT;
	} else {
		__wsum csum = 0;
		if (!FUNC1(to, len, &csum, &msg->msg_iter))
			return -EFAULT;
		skb->csum = FUNC2(skb->csum, csum, odd);
	}
	return 0;
}