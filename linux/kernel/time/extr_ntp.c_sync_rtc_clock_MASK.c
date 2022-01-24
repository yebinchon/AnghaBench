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
struct timespec64 {int tv_sec; } ;
struct TYPE_2__ {int tz_minuteswest; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RTC_SYSTOHC ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 scalar_t__ persistent_clock_is_local ; 
 int FUNC2 (struct timespec64,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64,unsigned long,int) ; 
 TYPE_1__ sys_tz ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long target_nsec;
	struct timespec64 adjust, now;
	int rc;

	if (!FUNC0(CONFIG_RTC_SYSTOHC))
		return;

	FUNC1(&now);

	adjust = now;
	if (persistent_clock_is_local)
		adjust.tv_sec -= (sys_tz.tz_minuteswest * 60);

	/*
	 * The current RTC in use will provide the target_nsec it wants to be
	 * called at, and does rtc_tv_nsec_ok internally.
	 */
	rc = FUNC2(adjust, &target_nsec);
	if (rc == -ENODEV)
		return;

	FUNC3(now, target_nsec, rc);
}