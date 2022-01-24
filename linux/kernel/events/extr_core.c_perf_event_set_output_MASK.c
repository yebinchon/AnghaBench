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
struct ring_buffer {int dummy; } ;
struct perf_event {int cpu; scalar_t__ ctx; scalar_t__ clock; scalar_t__ pmu; int /*<<< orphan*/  mmap_mutex; int /*<<< orphan*/  mmap_count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct ring_buffer*) ; 
 struct ring_buffer* FUNC6 (struct perf_event*) ; 

__attribute__((used)) static int
FUNC7(struct perf_event *event, struct perf_event *output_event)
{
	struct ring_buffer *rb = NULL;
	int ret = -EINVAL;

	if (!output_event)
		goto set;

	/* don't allow circular references */
	if (event == output_event)
		goto out;

	/*
	 * Don't allow cross-cpu buffers
	 */
	if (output_event->cpu != event->cpu)
		goto out;

	/*
	 * If its not a per-cpu rb, it must be the same task.
	 */
	if (output_event->cpu == -1 && output_event->ctx != event->ctx)
		goto out;

	/*
	 * Mixing clocks in the same buffer is trouble you don't need.
	 */
	if (output_event->clock != event->clock)
		goto out;

	/*
	 * Either writing ring buffer from beginning or from end.
	 * Mixing is not allowed.
	 */
	if (FUNC2(output_event) != FUNC2(event))
		goto out;

	/*
	 * If both events generate aux data, they must be on the same PMU
	 */
	if (FUNC1(event) && FUNC1(output_event) &&
	    event->pmu != output_event->pmu)
		goto out;

set:
	FUNC3(&event->mmap_mutex);
	/* Can't redirect output if we've got an active mmap() */
	if (FUNC0(&event->mmap_count))
		goto unlock;

	if (output_event) {
		/* get the rb we want to redirect to */
		rb = FUNC6(output_event);
		if (!rb)
			goto unlock;
	}

	FUNC5(event, rb);

	ret = 0;
unlock:
	FUNC4(&event->mmap_mutex);

out:
	return ret;
}