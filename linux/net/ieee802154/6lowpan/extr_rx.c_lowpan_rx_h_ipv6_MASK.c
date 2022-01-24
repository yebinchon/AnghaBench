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
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  lowpan_rx_result ;

/* Variables and functions */
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

lowpan_rx_result FUNC3(struct sk_buff *skb)
{
	if (!FUNC0(*FUNC1(skb)))
		return RX_CONTINUE;

	/* Pull off the 1-byte of 6lowpan header. */
	FUNC2(skb, 1);
	return RX_QUEUED;
}