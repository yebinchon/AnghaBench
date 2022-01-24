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
typedef  int /*<<< orphan*/  u64 ;
struct perf_counts_values {int dummy; } ;
struct evsel {int /*<<< orphan*/ * counts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct evsel*,int,int) ; 
 int errno ; 
 struct perf_counts_values* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_counts_values*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct evsel*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evsel*,int,int,struct perf_counts_values*) ; 
 scalar_t__ FUNC5 (scalar_t__,struct perf_counts_values*,size_t) ; 

int FUNC6(struct evsel *evsel,
			      int cpu, int thread, bool scale)
{
	struct perf_counts_values count;
	size_t nv = scale ? 3 : 1;

	if (FUNC0(evsel, cpu, thread) < 0)
		return -EINVAL;

	if (evsel->counts == NULL && FUNC3(evsel, cpu + 1, thread + 1) < 0)
		return -ENOMEM;

	if (FUNC5(FUNC0(evsel, cpu, thread), &count, nv * sizeof(u64)) <= 0)
		return -errno;

	FUNC4(evsel, cpu, thread, &count);
	FUNC2(&count, scale, NULL);
	*FUNC1(evsel->counts, cpu, thread) = count;
	return 0;
}