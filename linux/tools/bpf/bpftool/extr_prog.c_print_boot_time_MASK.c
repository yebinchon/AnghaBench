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
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_BOOTTIME ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,char*,struct tm*) ; 

__attribute__((used)) static void FUNC5(__u64 nsecs, char *buf, unsigned int size)
{
	struct timespec real_time_ts, boot_time_ts;
	time_t wallclock_secs;
	struct tm load_tm;

	buf[--size] = '\0';

	if (FUNC0(CLOCK_REALTIME, &real_time_ts) ||
	    FUNC0(CLOCK_BOOTTIME, &boot_time_ts)) {
		FUNC2("Can't read clocks");
		FUNC3(buf, size, "%llu", nsecs / 1000000000);
		return;
	}

	wallclock_secs = (real_time_ts.tv_sec - boot_time_ts.tv_sec) +
		(real_time_ts.tv_nsec - boot_time_ts.tv_nsec + nsecs) /
		1000000000;


	if (!FUNC1(&wallclock_secs, &load_tm)) {
		FUNC3(buf, size, "%llu", nsecs / 1000000000);
		return;
	}

	if (json_output)
		FUNC4(buf, size, "%s", &load_tm);
	else
		FUNC4(buf, size, "%FT%T%z", &load_tm);
}