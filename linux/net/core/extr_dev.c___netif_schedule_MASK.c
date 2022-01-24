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
struct Qdisc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QDISC_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct Qdisc *q)
{
	if (!FUNC1(__QDISC_STATE_SCHED, &q->state))
		FUNC0(q);
}