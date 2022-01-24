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
struct timezone {int tz_minuteswest; } ;
struct timespec64 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct timespec64 const*) ; 
 int FUNC1 (struct timespec64 const*,struct timezone const*) ; 
 struct timezone sys_tz ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64 const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(const struct timespec64 *tv, const struct timezone *tz)
{
	static int firsttime = 1;
	int error = 0;

	if (tv && !FUNC3(tv))
		return -EINVAL;

	error = FUNC1(tv, tz);
	if (error)
		return error;

	if (tz) {
		/* Verify we're witin the +-15 hrs range */
		if (tz->tz_minuteswest > 15*60 || tz->tz_minuteswest < -15*60)
			return -EINVAL;

		sys_tz = *tz;
		FUNC4();
		if (firsttime) {
			firsttime = 0;
			if (!tv)
				FUNC2();
		}
	}
	if (tv)
		return FUNC0(tv);
	return 0;
}