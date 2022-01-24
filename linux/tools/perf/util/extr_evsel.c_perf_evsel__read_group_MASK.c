#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct perf_stat_evsel {int* group_data; } ;
struct TYPE_3__ {int read_format; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; struct perf_stat_evsel* stats; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct evsel*,int,int) ; 
 int PERF_FORMAT_ID ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct evsel*) ; 
 int FUNC2 (struct evsel*,int,int,int*) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int) ; 
 int* FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct evsel *leader, int cpu, int thread)
{
	struct perf_stat_evsel *ps = leader->stats;
	u64 read_format = leader->core.attr.read_format;
	int size = FUNC3(&leader->core);
	u64 *data = ps->group_data;

	if (!(read_format & PERF_FORMAT_ID))
		return -EINVAL;

	if (!FUNC1(leader))
		return -EINVAL;

	if (!data) {
		data = FUNC5(size);
		if (!data)
			return -ENOMEM;

		ps->group_data = data;
	}

	if (FUNC0(leader, cpu, thread) < 0)
		return -EINVAL;

	if (FUNC4(FUNC0(leader, cpu, thread), data, size) <= 0)
		return -errno;

	return FUNC2(leader, cpu, thread, data);
}