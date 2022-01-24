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
struct sk_buff {scalar_t__ ip_summed; int csum_complete_sw; int csum_valid; int /*<<< orphan*/  csum; int /*<<< orphan*/  dev; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__sum16 FUNC7(struct sk_buff *skb)
{
	__wsum csum;
	__sum16 sum;

	csum = FUNC4(skb, 0, skb->len, 0);

	sum = FUNC1(FUNC0(skb->csum, csum));
	/* This check is inverted, because we already knew the hardware
	 * checksum is invalid before calling this function. So, if the
	 * re-computed checksum is valid instead, then we have a mismatch
	 * between the original skb->csum and skb_checksum(). This means either
	 * the original hardware checksum is incorrect or we screw up skb->csum
	 * when moving skb->data around.
	 */
	if (FUNC2(!sum)) {
		if (FUNC6(skb->ip_summed == CHECKSUM_COMPLETE) &&
		    !skb->csum_complete_sw)
			FUNC3(skb->dev, skb);
	}

	if (!FUNC5(skb)) {
		/* Save full packet checksum */
		skb->csum = csum;
		skb->ip_summed = CHECKSUM_COMPLETE;
		skb->csum_complete_sw = 1;
		skb->csum_valid = !sum;
	}

	return sum;
}