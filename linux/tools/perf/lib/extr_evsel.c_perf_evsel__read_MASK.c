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
struct perf_evsel {int dummy; } ;
struct perf_counts_values {int /*<<< orphan*/  values; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct perf_evsel*,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct perf_counts_values*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (struct perf_evsel*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 

int FUNC4(struct perf_evsel *evsel, int cpu, int thread,
		     struct perf_counts_values *count)
{
	size_t size = FUNC2(evsel);

	FUNC1(count, 0, sizeof(*count));

	if (FUNC0(evsel, cpu, thread) < 0)
		return -EINVAL;

	if (FUNC3(FUNC0(evsel, cpu, thread), count->values, size) <= 0)
		return -errno;

	return 0;
}