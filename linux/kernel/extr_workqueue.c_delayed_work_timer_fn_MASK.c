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
struct timer_list {int dummy; } ;
struct delayed_work {int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct delayed_work* dwork ; 
 struct delayed_work* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

void FUNC2(struct timer_list *t)
{
	struct delayed_work *dwork = FUNC1(dwork, t, timer);

	/* should have been called from irqsafe timer with irq already off */
	FUNC0(dwork->cpu, dwork->wq, &dwork->work);
}