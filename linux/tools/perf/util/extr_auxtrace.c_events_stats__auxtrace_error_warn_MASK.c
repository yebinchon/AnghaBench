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
struct events_stats {int /*<<< orphan*/ * nr_auxtrace_errors; } ;

/* Variables and functions */
 int PERF_AUXTRACE_ERROR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(const struct events_stats *stats)
{
	int i;

	for (i = 0; i < PERF_AUXTRACE_ERROR_MAX; i++) {
		if (!stats->nr_auxtrace_errors[i])
			continue;
		FUNC1("%u %s errors\n",
			    stats->nr_auxtrace_errors[i],
			    FUNC0(i));
	}
}