#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  next; int /*<<< orphan*/  users; } ;
typedef  enum skb_free_reason { ____Placeholder_skb_free_reason } skb_free_reason ;
struct TYPE_4__ {int reason; } ;
struct TYPE_3__ {int /*<<< orphan*/  completion_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  NET_TX_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__ softnet_data ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct sk_buff *skb, enum skb_free_reason reason)
{
	unsigned long flags;

	if (FUNC11(!skb))
		return;

	if (FUNC3(FUNC8(&skb->users) == 1)) {
		FUNC10();
		FUNC9(&skb->users, 0);
	} else if (FUNC3(!FUNC7(&skb->users))) {
		return;
	}
	FUNC2(skb)->reason = reason;
	FUNC5(flags);
	skb->next = FUNC0(softnet_data.completion_queue);
	FUNC1(softnet_data.completion_queue, skb);
	FUNC6(NET_TX_SOFTIRQ);
	FUNC4(flags);
}