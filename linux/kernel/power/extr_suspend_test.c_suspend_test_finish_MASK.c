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

/* Variables and functions */
 int TEST_SUSPEND_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 long jiffies ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned int,unsigned int) ; 
 long suspend_test_start_time ; 

void FUNC4(const char *label)
{
	long nj = jiffies - suspend_test_start_time;
	unsigned msec;

	msec = FUNC2(FUNC1(nj));
	FUNC3("PM: %s took %d.%03d seconds\n", label,
			msec / 1000, msec % 1000);

	/* Warning on suspend means the RTC alarm period needs to be
	 * larger -- the system was sooo slooowwww to suspend that the
	 * alarm (should have) fired before the system went to sleep!
	 *
	 * Warning on either suspend or resume also means the system
	 * has some performance issues.  The stack dump of a WARN_ON
	 * is more likely to get the right attention than a printk...
	 */
	FUNC0(msec > (TEST_SUSPEND_SECONDS * 1000),
	     "Component: %s, time: %u\n", label, msec);
}