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
 int /*<<< orphan*/  RX_DROP ; 
 int /*<<< orphan*/  RX_QUEUED ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static lowpan_rx_result FUNC3(struct sk_buff *skb)
{
	int ret;

	if (!FUNC1(*FUNC2(skb)))
		return RX_CONTINUE;

	ret = FUNC0(skb);
	if (ret < 0)
		return RX_DROP;

	return RX_QUEUED;
}