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
struct alarm_base {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct alarm {size_t type; int /*<<< orphan*/  timer; TYPE_1__ node; } ;

/* Variables and functions */
 struct alarm_base* alarm_bases ; 
 int /*<<< orphan*/  FUNC0 (struct alarm_base*,struct alarm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct alarm *alarm)
{
	struct alarm_base *base = &alarm_bases[alarm->type];
	unsigned long flags;

	FUNC3(&base->lock, flags);
	FUNC2(&alarm->timer, alarm->node.expires);
	FUNC1(&alarm->timer);
	FUNC0(base, alarm);
	FUNC4(&base->lock, flags);
}