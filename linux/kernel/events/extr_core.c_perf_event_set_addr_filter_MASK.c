#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nr_file_filters; } ;
struct perf_event {TYPE_1__ addr_filters; TYPE_3__* pmu; int /*<<< orphan*/  parent; TYPE_2__* ctx; } ;
struct TYPE_6__ {int (* addr_filters_validate ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filters ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_event_addr_filters_apply ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct perf_event*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct perf_event *event, char *filter_str)
{
	FUNC0(filters);
	int ret;

	/*
	 * Since this is called in perf_ioctl() path, we're already holding
	 * ctx::mutex.
	 */
	FUNC3(&event->ctx->mutex);

	if (FUNC1(event->parent))
		return -EINVAL;

	ret = FUNC6(event, filter_str, &filters);
	if (ret)
		goto fail_clear_files;

	ret = event->pmu->addr_filters_validate(&filters);
	if (ret)
		goto fail_free_filters;

	/* remove existing filters, if any */
	FUNC4(event, &filters);

	/* install new filters */
	FUNC5(event, perf_event_addr_filters_apply);

	return ret;

fail_free_filters:
	FUNC2(&filters);

fail_clear_files:
	event->addr_filters.nr_file_filters = 0;

	return ret;
}