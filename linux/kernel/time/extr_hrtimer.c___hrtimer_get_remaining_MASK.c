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
struct hrtimer {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TIME_LOW_RES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer const*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer const*,unsigned long*) ; 

ktime_t FUNC5(const struct hrtimer *timer, bool adjust)
{
	unsigned long flags;
	ktime_t rem;

	FUNC3(timer, &flags);
	if (FUNC0(CONFIG_TIME_LOW_RES) && adjust)
		rem = FUNC2(timer);
	else
		rem = FUNC1(timer);
	FUNC4(timer, &flags);

	return rem;
}