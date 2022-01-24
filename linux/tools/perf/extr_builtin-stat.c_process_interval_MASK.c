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
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {int interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  INTERVAL ; 
 int NSEC_PER_SEC ; 
 scalar_t__ STAT_RECORD ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct timespec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*) ; 
 int /*<<< orphan*/  ref_time ; 
 TYPE_1__ stat_config ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  walltime_nsecs_stats ; 

__attribute__((used)) static void FUNC8(void)
{
	struct timespec ts, rs;

	FUNC1(CLOCK_MONOTONIC, &ts);
	FUNC2(&rs, &ts, &ref_time);

	FUNC6(&rs);

	if (STAT_RECORD) {
		if (FUNC0(rs.tv_sec * NSEC_PER_SEC + rs.tv_nsec, INTERVAL))
			FUNC4("failed to write stat round event\n");
	}

	FUNC3(&walltime_nsecs_stats);
	FUNC7(&walltime_nsecs_stats, stat_config.interval * 1000000);
	FUNC5(&rs, 0, NULL);
}