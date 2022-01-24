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
struct strparser {int /*<<< orphan*/ * skb_head; int /*<<< orphan*/  work; int /*<<< orphan*/  msg_timer_work; int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct strparser *strp)
{
	FUNC0(!strp->stopped);

	FUNC1(&strp->msg_timer_work);
	FUNC2(&strp->work);

	if (strp->skb_head) {
		FUNC3(strp->skb_head);
		strp->skb_head = NULL;
	}
}