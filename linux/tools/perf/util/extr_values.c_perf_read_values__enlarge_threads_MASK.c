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
struct perf_read_values {int threads_max; void* value; void* tid; void* pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (void*,int) ; 

__attribute__((used)) static int FUNC3(struct perf_read_values *values)
{
	int nthreads_max = values->threads_max * 2;
	void *npid = FUNC2(values->pid, nthreads_max * sizeof(*values->pid)),
	     *ntid = FUNC2(values->tid, nthreads_max * sizeof(*values->tid)),
	     *nvalue = FUNC2(values->value, nthreads_max * sizeof(*values->value));

	if (!npid || !ntid || !nvalue)
		goto out_err;

	values->threads_max = nthreads_max;
	values->pid = npid;
	values->tid = ntid;
	values->value = nvalue;
	return 0;
out_err:
	FUNC0(npid);
	FUNC0(ntid);
	FUNC0(nvalue);
	FUNC1("failed to enlarge read_values threads arrays");
	return -ENOMEM;
}