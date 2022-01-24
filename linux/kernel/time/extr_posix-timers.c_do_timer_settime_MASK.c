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
typedef  int /*<<< orphan*/  timer_t ;
struct k_itimer {struct k_clock* kclock; } ;
struct k_clock {int (* timer_set ) (struct k_itimer*,int,struct itimerspec64*,struct itimerspec64*) ;} ;
struct itimerspec64 {int /*<<< orphan*/  it_value; int /*<<< orphan*/  it_interval; } ;

/* Variables and functions */
 int EINVAL ; 
 int TIMER_RETRY ; 
 scalar_t__ FUNC0 (int) ; 
 struct k_itimer* FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct itimerspec64*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct k_itimer*,int,struct itimerspec64*,struct itimerspec64*) ; 
 struct k_itimer* FUNC4 (struct k_itimer*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct k_itimer*,unsigned long) ; 

__attribute__((used)) static int FUNC7(timer_t timer_id, int tmr_flags,
			    struct itimerspec64 *new_spec64,
			    struct itimerspec64 *old_spec64)
{
	const struct k_clock *kc;
	struct k_itimer *timr;
	unsigned long flags;
	int error = 0;

	if (!FUNC5(&new_spec64->it_interval) ||
	    !FUNC5(&new_spec64->it_value))
		return -EINVAL;

	if (old_spec64)
		FUNC2(old_spec64, 0, sizeof(*old_spec64));

	timr = FUNC1(timer_id, &flags);
retry:
	if (!timr)
		return -EINVAL;

	kc = timr->kclock;
	if (FUNC0(!kc || !kc->timer_set))
		error = -EINVAL;
	else
		error = kc->timer_set(timr, tmr_flags, new_spec64, old_spec64);

	if (error == TIMER_RETRY) {
		// We already got the old time...
		old_spec64 = NULL;
		/* Unlocks and relocks the timer if it still exists */
		timr = FUNC4(timr, &flags);
		goto retry;
	}
	FUNC6(timr, flags);

	return error;
}