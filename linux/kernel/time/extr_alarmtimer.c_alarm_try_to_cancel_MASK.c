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
struct alarm_base {int /*<<< orphan*/  (* gettime ) () ;int /*<<< orphan*/  lock; } ;
struct alarm {size_t type; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 struct alarm_base* alarm_bases ; 
 int /*<<< orphan*/  FUNC0 (struct alarm_base*,struct alarm*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct alarm*,int /*<<< orphan*/ ) ; 

int FUNC6(struct alarm *alarm)
{
	struct alarm_base *base = &alarm_bases[alarm->type];
	unsigned long flags;
	int ret;

	FUNC2(&base->lock, flags);
	ret = FUNC1(&alarm->timer);
	if (ret >= 0)
		FUNC0(base, alarm);
	FUNC3(&base->lock, flags);

	FUNC5(alarm, base->gettime());
	return ret;
}