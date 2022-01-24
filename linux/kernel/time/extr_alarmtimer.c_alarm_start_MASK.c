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
struct alarm_base {int /*<<< orphan*/  (* gettime ) () ;int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct alarm {size_t type; TYPE_1__ node; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 struct alarm_base* alarm_bases ; 
 int /*<<< orphan*/  FUNC0 (struct alarm_base*,struct alarm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct alarm*,int /*<<< orphan*/ ) ; 

void FUNC6(struct alarm *alarm, ktime_t start)
{
	struct alarm_base *base = &alarm_bases[alarm->type];
	unsigned long flags;

	FUNC2(&base->lock, flags);
	alarm->node.expires = start;
	FUNC0(base, alarm);
	FUNC1(&alarm->timer, alarm->node.expires, HRTIMER_MODE_ABS);
	FUNC3(&base->lock, flags);

	FUNC5(alarm, base->gettime());
}