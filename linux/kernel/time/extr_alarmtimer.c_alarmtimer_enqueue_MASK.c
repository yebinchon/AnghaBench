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
struct alarm_base {int /*<<< orphan*/  timerqueue; } ;
struct alarm {int state; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int ALARMTIMER_STATE_ENQUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct alarm_base *base, struct alarm *alarm)
{
	if (alarm->state & ALARMTIMER_STATE_ENQUEUED)
		FUNC1(&base->timerqueue, &alarm->node);

	FUNC0(&base->timerqueue, &alarm->node);
	alarm->state |= ALARMTIMER_STATE_ENQUEUED;
}