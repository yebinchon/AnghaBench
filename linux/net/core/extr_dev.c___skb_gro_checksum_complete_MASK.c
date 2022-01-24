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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  dev; int /*<<< orphan*/  csum_complete_sw; } ;
typedef  int /*<<< orphan*/  __wsum ;
typedef  int /*<<< orphan*/  __sum16 ;
struct TYPE_2__ {int csum_valid; int /*<<< orphan*/  csum; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__sum16 FUNC9(struct sk_buff *skb)
{
	__wsum wsum;
	__sum16 sum;

	wsum = FUNC5(skb, FUNC7(skb), FUNC6(skb), 0);

	/* NAPI_GRO_CB(skb)->csum holds pseudo checksum */
	sum = FUNC2(FUNC1(FUNC0(skb)->csum, wsum));
	/* See comments in __skb_checksum_complete(). */
	if (FUNC3(!sum)) {
		if (FUNC8(skb->ip_summed == CHECKSUM_COMPLETE) &&
		    !skb->csum_complete_sw)
			FUNC4(skb->dev, skb);
	}

	FUNC0(skb)->csum = wsum;
	FUNC0(skb)->csum_valid = 1;

	return sum;
}