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
struct sk_buff {int /*<<< orphan*/ * sk; int /*<<< orphan*/ * head; int /*<<< orphan*/  cloned; } ;
struct TYPE_2__ {int /*<<< orphan*/  dataref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	if (FUNC1(skb->head)) {
		if (!skb->cloned ||
		    !FUNC0(&(FUNC2(skb)->dataref)))
			FUNC4(skb->head);

		skb->head = NULL;
	}
	if (skb->sk != NULL)
		FUNC3(skb);
}