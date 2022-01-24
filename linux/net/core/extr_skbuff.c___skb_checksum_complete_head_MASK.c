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
struct sk_buff {scalar_t__ ip_summed; int csum_valid; int /*<<< orphan*/  dev; int /*<<< orphan*/  csum_complete_sw; int /*<<< orphan*/  csum; } ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

__sum16 FUNC6(struct sk_buff *skb, int len)
{
	__sum16 sum;

	sum = FUNC0(FUNC3(skb, 0, len, skb->csum));
	/* See comments in __skb_checksum_complete(). */
	if (FUNC1(!sum)) {
		if (FUNC5(skb->ip_summed == CHECKSUM_COMPLETE) &&
		    !skb->csum_complete_sw)
			FUNC2(skb->dev, skb);
	}
	if (!FUNC4(skb))
		skb->csum_valid = !sum;
	return sum;
}