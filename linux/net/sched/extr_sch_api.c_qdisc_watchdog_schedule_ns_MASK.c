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
typedef  scalar_t__ u64 ;
struct qdisc_watchdog {scalar_t__ last_expires; int /*<<< orphan*/  timer; int /*<<< orphan*/  qdisc; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_PINNED ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct qdisc_watchdog *wd, u64 expires)
{
	if (FUNC3(__QDISC_STATE_DEACTIVATED,
		     &FUNC2(wd->qdisc)->state))
		return;

	if (wd->last_expires == expires)
		return;

	wd->last_expires = expires;
	FUNC0(&wd->timer,
		      FUNC1(expires),
		      HRTIMER_MODE_ABS_PINNED);
}