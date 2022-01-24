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
struct perf_read_values {int threads_max; int counters_max; void* value; void* tid; void* pid; void* countername; void* counterrawid; scalar_t__ counters; scalar_t__ threads; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 

int FUNC4(struct perf_read_values *values)
{
	values->threads_max = 16;
	values->pid = FUNC0(values->threads_max * sizeof(*values->pid));
	values->tid = FUNC0(values->threads_max * sizeof(*values->tid));
	values->value = FUNC2(values->threads_max * sizeof(*values->value));
	if (!values->pid || !values->tid || !values->value) {
		FUNC1("failed to allocate read_values threads arrays");
		goto out_free_pid;
	}
	values->threads = 0;

	values->counters_max = 16;
	values->counterrawid = FUNC0(values->counters_max
				      * sizeof(*values->counterrawid));
	values->countername = FUNC0(values->counters_max
				     * sizeof(*values->countername));
	if (!values->counterrawid || !values->countername) {
		FUNC1("failed to allocate read_values counters arrays");
		goto out_free_counter;
	}
	values->counters = 0;

	return 0;

out_free_counter:
	FUNC3(&values->counterrawid);
	FUNC3(&values->countername);
out_free_pid:
	FUNC3(&values->pid);
	FUNC3(&values->tid);
	FUNC3(&values->value);
	return -ENOMEM;
}