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
struct sk_buff {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  lowpan_rx_result ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_CONTINUE ; 
 int /*<<< orphan*/  RX_DROP_UNUSABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static lowpan_rx_result FUNC3(struct sk_buff *skb)
{
	if (!FUNC0(*FUNC2(skb)))
		return RX_CONTINUE;

	FUNC1("%s: %s\n", skb->dev->name,
			     "6LoWPAN BC0 not supported\n");

	return RX_DROP_UNUSABLE;
}