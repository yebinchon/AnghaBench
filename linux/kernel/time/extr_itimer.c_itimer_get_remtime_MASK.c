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
struct timeval {int dummy; } ;
struct hrtimer {int dummy; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (struct hrtimer*,int) ; 
 scalar_t__ FUNC1 (struct hrtimer*) ; 
 struct timeval FUNC2 (scalar_t__) ; 

__attribute__((used)) static struct timeval FUNC3(struct hrtimer *timer)
{
	ktime_t rem = FUNC0(timer, true);

	/*
	 * Racy but safe: if the itimer expires after the above
	 * hrtimer_get_remtime() call but before this condition
	 * then we return 0 - which is correct.
	 */
	if (FUNC1(timer)) {
		if (rem <= 0)
			rem = NSEC_PER_USEC;
	} else
		rem = 0;

	return FUNC2(rem);
}