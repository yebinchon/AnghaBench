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
struct sk_buff {scalar_t__ ip_summed; unsigned int len; int /*<<< orphan*/  csum; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int FUNC0 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct sk_buff *skb, unsigned int len)
{
	if (skb->ip_summed == CHECKSUM_COMPLETE) {
		int delta = skb->len - len;

		skb->csum = FUNC1(skb->csum,
					   FUNC2(skb, len, delta, 0),
					   len);
	}
	return FUNC0(skb, len);
}