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
typedef  void* timer_t ;
struct k_itimer {int /*<<< orphan*/  it_id; int /*<<< orphan*/  kclock; } ;
struct k_clock {int /*<<< orphan*/  (* timer_wait_running ) (struct k_itimer*) ;} ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct k_itimer* FUNC2 (void*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct k_itimer*) ; 
 int /*<<< orphan*/  FUNC6 (struct k_itimer*,unsigned long) ; 

__attribute__((used)) static struct k_itimer *FUNC7(struct k_itimer *timer,
					   unsigned long *flags)
{
	const struct k_clock *kc = FUNC0(timer->kclock);
	timer_t timer_id = FUNC0(timer->it_id);

	/* Prevent kfree(timer) after dropping the lock */
	FUNC3();
	FUNC6(timer, *flags);

	if (!FUNC1(!kc->timer_wait_running))
		kc->timer_wait_running(timer);

	FUNC4();
	/* Relock the timer. It might be not longer hashed. */
	return FUNC2(timer_id, flags);
}